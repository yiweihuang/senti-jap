require 'sinatra'

# Base class for SentiJapApp Web Application
class SentiJapApp < Sinatra::Base
  enable :logging

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.dirname(__FILE__) + '/../public'

  get '/' do
    slim :home
  end
end
