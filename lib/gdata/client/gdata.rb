# Copyright (C) 2008 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "rexml/document"

module GData
  module Client
    
    # A client object used to interact with different Google Data APIs.
    class Base
      
      DEFAULT_OPTIONS = {
        :auth_handler => nil,
        :http_service => GData::HTTP::DefaultService,
        :version => "2",
        :clientlogin_url => nil,
        :clientlogin_service => nil,
        :authsub_scope => nil,
        :headers => {},
        :source => 'AnonymousApp' }
    
      # A subclass of GData::Auth that handles authentication signing.
      attr_accessor :auth_handler
      # A subclass of GData::HTTP that handles making HTTP requests.
      attr_accessor :http_service
      # Headers to include in every request.
      attr_accessor :headers
      # The API version being used.
      attr_accessor :version
      # The default URL for ClientLogin.
      attr_accessor :clientlogin_url
      # A default service name for ClientLogin (overriden by subclasses).
      attr_accessor :clientlogin_service
      # The broadest AuthSub scope for working with an API.
      # This is overriden by the service-specific subclasses.
      attr_accessor :authsub_scope
      # A short string identifying the current application.
      attr_accessor :source
      
      def initialize(options = {})
        options = DEFAULT_OPTIONS.merge(options)
        options.each do |key, value|
          self.send("#{key}=", value)
        end
      end
      
      # Sends an HTTP request and parses the result with REXML.
      def make_request(method, url, body = '')
        headers = self.prepare_headers
        request = GData::HTTP::Request.new(url, :headers => headers, 
          :method => method, :body => body)
        
        if @auth_handler and @auth_handler.respond_to?(:sign_request!)
          @auth_handler.sign_request!(request)
        end

        service = http_service.new
        response = service.make_request(request)
        
        case response.status_code  
        when 200, 201
          #Do nothing, it's a success.
        when 401, 403
          raise AuthorizationError, response.body
        when 400
          raise BadRequestError, response.body
        when 409
          raise VersionConflictError, response.body
        when 500
          raise ServerError, response.body
        else
          raise UnknownError, response.status_code + ' ' + response.body
        end
        
        if response.body
          begin
            document = REXML::Document.new(response.body).root
            if document.nil?
              return response.body
            else
              return document
            end
          rescue
            return response.body
          end
        end
      end
      
      # Performs an HTTP GET against the API.
      def get(url)
        return self.make_request(:get, url)
      end
      
      # Performs an HTTP PUT against the API.
      def put(url, body)
        return self.make_request(:put, url, body)
      end
      
      # Performs an HTTP POST against the API.
      def post(url, body)
        return self.make_request(:post, url, body)
      end
      
      # Performs an HTTP DELETE against the API.
      def delete(url)
        return self.make_request(:delete, url)
      end
      
      # Constructs some necessary headers for every request.
      def prepare_headers
        headers = @headers
        headers['GData-Version'] = @version
        headers['User-Agent'] = GData::Auth::SOURCE_LIB_STRING + @source
        headers['Content-Type'] = 'application/atom+xml'
        return headers
      end
      
      # Performs ClientLogin for the service.
      def clientlogin(username, password, captcha_token = nil, captcha_answer = nil, service = nil)
        if service.nil?
          service = @clientlogin_service
        end
        @auth_handler = GData::Auth::ClientLogin.new(service)
        if @clientlogin_url
          @auth_handler.auth_url = @clientlogin_url
        end
        source = GData::Auth::SOURCE_LIB_STRING + @source
        @auth_handler.get_token(username, password, source, captcha_token, captcha_answer)
      end
      
      def authsub_url(next_url, secure = false, session = true, domain = nil,
        scope = nil)
        if scope.nil?
          scope = @authsub_scope
        end
        GData::Auth::AuthSub.get_url(next_url, scope, secure, session, domain)
      end
      
      # Sets an AuthSub token for the service.
      def authsub_token=(token)
        @auth_handler = GData::Auth::AuthSub.new(token)
      end
      
      # Sets a private key to use with AuthSub requests.
      def authsub_private_key=(key)
        if @auth_handler.class == GData::Auth::AuthSub
          @auth_handler.private_key = key
        else
          raise RuntimeError, "An AuthSub token must be set first."
        end
      end
    end
  end
end