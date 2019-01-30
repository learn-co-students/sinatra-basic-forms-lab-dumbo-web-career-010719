require_relative 'config/environment'
# require 'pry'
class App < Sinatra::Base

  get "/" do
    # @puppies = Puppy.all
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do

    @puppy = Puppy.new(params["name"], params["breed"], params["age"])
    erb :display_puppy
  end

  # get '/' do
  #   erb :index
  # end
  #
  # get '/new' do
  #   erb :create_puppy
  # end
  #
  # post '/puppy' do
  #   # @puppy = Puppy.new(params['name'], params['breed'], params['age'])
  #
  #   @puppy = Puppy.new(params)
  #   erb :display_puppy
  #   # redirect to ("")
  end
