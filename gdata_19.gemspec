# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gdata_19}
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Fisher"]
  s.date = %q{2011-08-31}
  s.default_executable = %q{test_captcha.rb}
  s.description = %q{Ruby 1.9.x compatible Google GData gem makes it easy to work with the Google Data APIs}
  s.email = %q{jfisher@youtube.com}
  s.executables = ["test_captcha.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.mdown"
  ]
  s.files = [
    ".hgtags",
    "LICENSE",
    "README.mdown",
    "Rakefile",
    "VERSION",
    "bin/test_captcha.rb",
    "doc/classes/GData.html",
    "doc/classes/GData/Auth.html",
    "doc/classes/GData/Auth/AuthSub.html",
    "doc/classes/GData/Auth/AuthSub.src/M000020.html",
    "doc/classes/GData/Auth/AuthSub.src/M000021.html",
    "doc/classes/GData/Auth/AuthSub.src/M000022.html",
    "doc/classes/GData/Auth/AuthSub.src/M000023.html",
    "doc/classes/GData/Auth/AuthSub.src/M000024.html",
    "doc/classes/GData/Auth/AuthSub.src/M000025.html",
    "doc/classes/GData/Auth/AuthSub.src/M000026.html",
    "doc/classes/GData/Auth/AuthSub.src/M000038.html",
    "doc/classes/GData/Auth/AuthSub.src/M000039.html",
    "doc/classes/GData/Auth/AuthSub.src/M000040.html",
    "doc/classes/GData/Auth/AuthSub.src/M000041.html",
    "doc/classes/GData/Auth/AuthSub.src/M000042.html",
    "doc/classes/GData/Auth/AuthSub.src/M000043.html",
    "doc/classes/GData/Auth/AuthSub.src/M000044.html",
    "doc/classes/GData/Auth/AuthSub.src/M000045.html",
    "doc/classes/GData/Auth/AuthSub.src/M000046.html",
    "doc/classes/GData/Auth/AuthSub.src/M000047.html",
    "doc/classes/GData/Auth/AuthSub.src/M000048.html",
    "doc/classes/GData/Auth/AuthSub.src/M000049.html",
    "doc/classes/GData/Auth/AuthSub.src/M000050.html",
    "doc/classes/GData/Auth/AuthSub.src/M000051.html",
    "doc/classes/GData/Auth/AuthSub.src/M000052.html",
    "doc/classes/GData/Auth/AuthSub.src/M000053.html",
    "doc/classes/GData/Auth/ClientLogin.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000027.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000028.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000029.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000045.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000046.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000047.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000050.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000051.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000052.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000053.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000054.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000055.html",
    "doc/classes/GData/Auth/ClientLogin.src/M000056.html",
    "doc/classes/GData/Client.html",
    "doc/classes/GData/Client/Apps.html",
    "doc/classes/GData/Client/Apps.src/M000027.html",
    "doc/classes/GData/Client/Apps.src/M000028.html",
    "doc/classes/GData/Client/AuthorizationError.html",
    "doc/classes/GData/Client/BadRequestError.html",
    "doc/classes/GData/Client/Base.html",
    "doc/classes/GData/Client/Base.src/M000002.html",
    "doc/classes/GData/Client/Base.src/M000003.html",
    "doc/classes/GData/Client/Base.src/M000004.html",
    "doc/classes/GData/Client/Base.src/M000005.html",
    "doc/classes/GData/Client/Base.src/M000006.html",
    "doc/classes/GData/Client/Base.src/M000007.html",
    "doc/classes/GData/Client/Base.src/M000008.html",
    "doc/classes/GData/Client/Base.src/M000009.html",
    "doc/classes/GData/Client/Base.src/M000010.html",
    "doc/classes/GData/Client/Base.src/M000011.html",
    "doc/classes/GData/Client/Base.src/M000012.html",
    "doc/classes/GData/Client/Base.src/M000013.html",
    "doc/classes/GData/Client/Base.src/M000014.html",
    "doc/classes/GData/Client/Base.src/M000015.html",
    "doc/classes/GData/Client/Base.src/M000016.html",
    "doc/classes/GData/Client/Base.src/M000017.html",
    "doc/classes/GData/Client/Base.src/M000018.html",
    "doc/classes/GData/Client/Base.src/M000019.html",
    "doc/classes/GData/Client/Base.src/M000020.html",
    "doc/classes/GData/Client/Base.src/M000021.html",
    "doc/classes/GData/Client/Base.src/M000022.html",
    "doc/classes/GData/Client/Base.src/M000023.html",
    "doc/classes/GData/Client/Base.src/M000024.html",
    "doc/classes/GData/Client/Base.src/M000025.html",
    "doc/classes/GData/Client/Blogger.html",
    "doc/classes/GData/Client/Blogger.src/M000002.html",
    "doc/classes/GData/Client/BookSearch.html",
    "doc/classes/GData/Client/BookSearch.src/M000010.html",
    "doc/classes/GData/Client/BookSearch.src/M000011.html",
    "doc/classes/GData/Client/Calendar.html",
    "doc/classes/GData/Client/Calendar.src/M000030.html",
    "doc/classes/GData/Client/Calendar.src/M000031.html",
    "doc/classes/GData/Client/Calendar.src/M000032.html",
    "doc/classes/GData/Client/Calendar.src/M000033.html",
    "doc/classes/GData/Client/Calendar.src/M000034.html",
    "doc/classes/GData/Client/CaptchaError.html",
    "doc/classes/GData/Client/CaptchaError.src/M000001.html",
    "doc/classes/GData/Client/CaptchaError.src/M000005.html",
    "doc/classes/GData/Client/Contacts.html",
    "doc/classes/GData/Client/Contacts.src/M000003.html",
    "doc/classes/GData/Client/DocList.html",
    "doc/classes/GData/Client/DocList.src/M000006.html",
    "doc/classes/GData/Client/DocList.src/M000007.html",
    "doc/classes/GData/Client/Error.html",
    "doc/classes/GData/Client/Finance.html",
    "doc/classes/GData/Client/Finance.src/M000029.html",
    "doc/classes/GData/Client/Finance.src/M000030.html",
    "doc/classes/GData/Client/GBase.html",
    "doc/classes/GData/Client/GBase.src/M000004.html",
    "doc/classes/GData/Client/GMail.html",
    "doc/classes/GData/Client/GMail.src/M000028.html",
    "doc/classes/GData/Client/GMail.src/M000029.html",
    "doc/classes/GData/Client/Health.html",
    "doc/classes/GData/Client/Health.src/M000031.html",
    "doc/classes/GData/Client/Health.src/M000034.html",
    "doc/classes/GData/Client/Health.src/M000035.html",
    "doc/classes/GData/Client/Notebook.html",
    "doc/classes/GData/Client/Notebook.src/M000009.html",
    "doc/classes/GData/Client/Notebook.src/M000010.html",
    "doc/classes/GData/Client/Photos.html",
    "doc/classes/GData/Client/Photos.src/M000008.html",
    "doc/classes/GData/Client/Photos.src/M000009.html",
    "doc/classes/GData/Client/RequestError.html",
    "doc/classes/GData/Client/RequestError.src/M000006.html",
    "doc/classes/GData/Client/ServerError.html",
    "doc/classes/GData/Client/Spreadsheets.html",
    "doc/classes/GData/Client/Spreadsheets.src/M000001.html",
    "doc/classes/GData/Client/UnknownError.html",
    "doc/classes/GData/Client/VersionConflictError.html",
    "doc/classes/GData/Client/WebmasterTools.html",
    "doc/classes/GData/Client/WebmasterTools.src/M000007.html",
    "doc/classes/GData/Client/WebmasterTools.src/M000008.html",
    "doc/classes/GData/Client/YouTube.html",
    "doc/classes/GData/Client/YouTube.src/M000013.html",
    "doc/classes/GData/Client/YouTube.src/M000014.html",
    "doc/classes/GData/Client/YouTube.src/M000025.html",
    "doc/classes/GData/Client/YouTube.src/M000026.html",
    "doc/classes/GData/Client/YouTube.src/M000027.html",
    "doc/classes/GData/HTTP.html",
    "doc/classes/GData/HTTP/DefaultService.html",
    "doc/classes/GData/HTTP/DefaultService.src/M000019.html",
    "doc/classes/GData/HTTP/DefaultService.src/M000037.html",
    "doc/classes/GData/HTTP/DefaultService.src/M000042.html",
    "doc/classes/GData/HTTP/DefaultService.src/M000045.html",
    "doc/classes/GData/HTTP/DefaultService.src/M000046.html",
    "doc/classes/GData/HTTP/MimeBody.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000032.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000033.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000034.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000035.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000036.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000037.html",
    "doc/classes/GData/HTTP/MimeBody.src/M000038.html",
    "doc/classes/GData/HTTP/MimeBodyString.html",
    "doc/classes/GData/HTTP/MimeBodyString.src/M000036.html",
    "doc/classes/GData/HTTP/MimeBodyString.src/M000037.html",
    "doc/classes/GData/HTTP/MimeBodyString.src/M000039.html",
    "doc/classes/GData/HTTP/MimeBodyString.src/M000040.html",
    "doc/classes/GData/HTTP/MimeBodyString.src/M000041.html",
    "doc/classes/GData/HTTP/Request.html",
    "doc/classes/GData/HTTP/Request.src/M000015.html",
    "doc/classes/GData/HTTP/Request.src/M000016.html",
    "doc/classes/GData/HTTP/Request.src/M000017.html",
    "doc/classes/GData/HTTP/Request.src/M000018.html",
    "doc/classes/GData/HTTP/Request.src/M000033.html",
    "doc/classes/GData/HTTP/Request.src/M000034.html",
    "doc/classes/GData/HTTP/Request.src/M000035.html",
    "doc/classes/GData/HTTP/Request.src/M000036.html",
    "doc/classes/GData/HTTP/Request.src/M000038.html",
    "doc/classes/GData/HTTP/Request.src/M000039.html",
    "doc/classes/GData/HTTP/Request.src/M000040.html",
    "doc/classes/GData/HTTP/Request.src/M000041.html",
    "doc/classes/GData/HTTP/Request.src/M000042.html",
    "doc/classes/GData/HTTP/Request.src/M000043.html",
    "doc/classes/GData/HTTP/Request.src/M000044.html",
    "doc/classes/GData/HTTP/Request.src/M000045.html",
    "doc/classes/GData/HTTP/Response.html",
    "doc/classes/GData/HTTP/Response.src/M000032.html",
    "doc/classes/GData/HTTP/Response.src/M000035.html",
    "doc/classes/GData/HTTP/Response.src/M000038.html",
    "doc/classes/GData/HTTP/Response.src/M000039.html",
    "doc/created.rid",
    "doc/files/README.html",
    "doc/files/lib/gdata/auth/authsub_rb.html",
    "doc/files/lib/gdata/auth/clientlogin_rb.html",
    "doc/files/lib/gdata/auth_rb.html",
    "doc/files/lib/gdata/client/apps_rb.html",
    "doc/files/lib/gdata/client/base_rb.html",
    "doc/files/lib/gdata/client/blogger_rb.html",
    "doc/files/lib/gdata/client/booksearch_rb.html",
    "doc/files/lib/gdata/client/calendar_rb.html",
    "doc/files/lib/gdata/client/contacts_rb.html",
    "doc/files/lib/gdata/client/doclist_rb.html",
    "doc/files/lib/gdata/client/finance_rb.html",
    "doc/files/lib/gdata/client/gbase_rb.html",
    "doc/files/lib/gdata/client/gdata_rb.html",
    "doc/files/lib/gdata/client/gmail_rb.html",
    "doc/files/lib/gdata/client/health_rb.html",
    "doc/files/lib/gdata/client/notebook_rb.html",
    "doc/files/lib/gdata/client/photos_rb.html",
    "doc/files/lib/gdata/client/spreadsheets_rb.html",
    "doc/files/lib/gdata/client/webmaster_tools_rb.html",
    "doc/files/lib/gdata/client/youtube_rb.html",
    "doc/files/lib/gdata/client_rb.html",
    "doc/files/lib/gdata/http/default_service_rb.html",
    "doc/files/lib/gdata/http/mime_body_rb.html",
    "doc/files/lib/gdata/http/request_rb.html",
    "doc/files/lib/gdata/http/response_rb.html",
    "doc/files/lib/gdata/http_rb.html",
    "doc/files/lib/gdata_rb.html",
    "doc/fr_class_index.html",
    "doc/fr_file_index.html",
    "doc/fr_method_index.html",
    "doc/index.html",
    "doc/rdoc-style.css",
    "gdata_19.gemspec",
    "lib/gdata.rb",
    "lib/gdata/auth.rb",
    "lib/gdata/auth/authsub.rb",
    "lib/gdata/auth/clientlogin.rb",
    "lib/gdata/client.rb",
    "lib/gdata/client/analytics.rb",
    "lib/gdata/client/apps.rb",
    "lib/gdata/client/base.rb",
    "lib/gdata/client/blogger.rb",
    "lib/gdata/client/booksearch.rb",
    "lib/gdata/client/calendar.rb",
    "lib/gdata/client/contacts.rb",
    "lib/gdata/client/doclist.rb",
    "lib/gdata/client/finance.rb",
    "lib/gdata/client/gbase.rb",
    "lib/gdata/client/gmail.rb",
    "lib/gdata/client/health.rb",
    "lib/gdata/client/notebook.rb",
    "lib/gdata/client/photos.rb",
    "lib/gdata/client/spreadsheets.rb",
    "lib/gdata/client/webmaster_tools.rb",
    "lib/gdata/client/youtube.rb",
    "lib/gdata/http.rb",
    "lib/gdata/http/default_service.rb",
    "lib/gdata/http/mime_body.rb",
    "lib/gdata/http/request.rb",
    "lib/gdata/http/response.rb",
    "pkg/gdata_19-1.1.2.gem",
    "pkg/gdata_19-1.1.3.gem",
    "test/tc_gdata_auth_authsub.rb",
    "test/tc_gdata_auth_clientlogin.rb",
    "test/tc_gdata_client_base.rb",
    "test/tc_gdata_client_calendar.rb",
    "test/tc_gdata_client_photos.rb",
    "test/tc_gdata_client_youtube.rb",
    "test/tc_gdata_http_mime_body.rb",
    "test/tc_gdata_http_request.rb",
    "test/test_config.yml.example",
    "test/test_helper.rb",
    "test/testimage.jpg",
    "test/ts_gdata.rb",
    "test/ts_gdata_auth.rb",
    "test/ts_gdata_client.rb",
    "test/ts_gdata_http.rb"
  ]
  s.homepage = %q{http://github.com/tokumine/GData}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Google Data APIs Ruby Utility Library}
  s.test_files = ["test/ts_gdata.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

