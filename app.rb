# encoding: UTF-8

require 'sinatra'
require 'sinatra/contrib'
require 'sqlite3'



class Webapp < Sinatra::Base

  set :port, 8900

  get '/' do
    redirect '/home.html'
  end

  get '/v1/words' do
    send_file File.new("./data/wlist.json")
  end

  run! if app_file = $0
end
