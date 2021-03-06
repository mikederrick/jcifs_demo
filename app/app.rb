module JCIFS
  require 'jcifs'   

  class Application < Sinatra::Base
    register Sinatra::ConfigFile
    config_file JRuby.runtime.jruby_class_loader.get_resource('config/user.yml').get_path

  	get '/' do
      "whatup"
  	end

  	get '/file' do
  	  RemoteFile.new(settings.file_path, settings.username, settings.password).read
  	end
  end
end