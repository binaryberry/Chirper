require 'sinatra/base'

set :views, File.dirname(__FILE__) + '/app'

class Chirper < Sinatra::Base
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
