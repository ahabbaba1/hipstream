require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base
  get '/question1' do
    erb :question1
  end
  
  get '/' do
    erb :index
  end
end
