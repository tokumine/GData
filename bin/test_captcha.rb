#!/usr/bin/ruby
#
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

$:.unshift(File.dirname(__FILE__))

require '../lib/gdata'



def trigger_captcha
  client_login = GData::Auth::ClientLogin.new('cl')
  username = ''
  source = ''
  begin
    (1..50).each do |i|
      begin
        client_login.get_token(username, "junk#{i}", source)
      rescue GData::Client::AuthorizationError
      end
    end
  rescue GData::Client::CaptchaError => detail
    print "Token: #{detail.token}\n"
    print "http://www.google.com/accounts/#{detail.url}"
  end
end

def test_captcha_response
  client_login = GData::Auth::ClientLogin.new('cl')
  username = ''
  password = ''
  token = ''
  captcha_answer = ''
  source = ''
  token = client_login.get_token(username, password, source, token, captcha_answer)
  print token, "\n"
end

#trigger_captcha
#test_captcha_response