require 'sinatra/base'
# require './models/user.rb'


class Chirper < Sinatra::Base
  get '/' do
  	 erb :index
  end

  post '/users' do 
  	"Thank you for signing up"
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
