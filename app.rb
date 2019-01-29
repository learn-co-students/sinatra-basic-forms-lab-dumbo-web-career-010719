require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :puppy
  end

end
