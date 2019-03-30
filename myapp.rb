require 'sinatra'
require 'sinatra/reloader'

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
  erb :index, layout => :post
end

configure do
  set :views, 'views'
  end

get '/' do
  'Hello Rubyjjjjjjjjjjjsssssssskkkkkkkkiiiiiiiikkkkkk!'
end

get '/hello' do
  'Hello javascript!'
end

get '/hello/goodnight' do
  'Hello Jquery!'
end

#params省略ver
get '/hello/:name' do
  "hello #{params[:name]}"
end

# /hello/文字でアクセスする。複数パラメーター
# paramsの省略ver
# ?を両方f ;lに記入しないエラー吐かれる

get '/hello3/:fname/?:lname?' do |f ,l|
  "hello #{f} #{l}"
end

get '/hello5' do
  "hello #{params[:id]}"
end

get '/hello6' do
  "hello #{params[:id]} #{params[:name]}"
end


# 新規作成(POST)
post '/create' do

  # 画像情報を取得
  @filename = params[:file][:filename]
  file = params[:file][:tempfile]

  # 画像をディレクトリに配置
  File.open("./public/img/#{@filename}", 'wb') do |f|
    f.write(file.read)
  end

  @title = params[:title];
  @description = params[:description];
  @image_path = "/img/#{@filename}"

  erb :show
end



get '/create' do
  erb :create
end