require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/index' do
  erb :about
end

get '/blog' do
  erb :blog
end

get '/about' do
  erb :about
end

get '/services' do
  erb :services
end


