require "digest/md5"
require "fileutils"
require "sinatra"

get "/" do
  erb :index
end

get "/didShare" do
  if File.exist?(_fingerprinted_file_name(request))
    File.delete(_fingerprinted_file_name(request))
    "1"
  else
    "0"
  end
end

get "/apple-touch-icon.png" do
  File.write(_fingerprinted_file_name(request), "1")
end

def _fingerprinted_file_name(request)
  FileUtils.mkdir_p("requests")
  File.join("requests", Digest::MD5.hexdigest(request.ip))
end
