# encoding: UTF-8

require 'sinatra'
require 'sinatra/contrib'


class Webapp < Sinatra::Base

    
    get '/' do
        redirect '/home.html'
    end

    run! if app_file = $0
end
