# encoding: UTF-8

require 'json'
require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader'

class Webapp < Sinatra::Base

  set :port, 8900

  configure do
  	set :words, JSON.parse(File.new("./data/wlist.json").read)

  	register Sinatra::Reloader
  end

  get '/' do
    redirect '/home.html'
  end

  get '/v1/words' do
    json settings.words
  end

  post '/v1/update/:word' do 

  end

  run! if app_file = $0
end
