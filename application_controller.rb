require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/questions' do
    erb :questions
  end
  
  post '/results' do
    @links = calculate_hipsterness(params)
    erb :results
  end
  
end
