require 'sinatra'
require 'sinatra/reloader'

set :public_folder, File.dirname(__FILE__) + '/static'



get '/' do
  erb :hello
end

get '/hello' do
  erb :hello
end

get '/fruits' do
  @fruits = ['apple','Banana','Lemon','Dragon']
  erb :fruits
end

get '/info' do
  # @infos = db.query("SELECT * From infos")
  @infos = [{
                name: 'saboyuta',
                age: 30,
                favorites: ['音楽', 'コーヒー', 'プログラミング']
            },{
                name: 'gakeo',
                age: 27,
                favorites: ['Pairs', 'Tapple', 'Tinder']
            }]
  erb :info
end


