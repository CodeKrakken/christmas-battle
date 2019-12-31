require 'sinatra'

get '/random-cat' do
  @cat_name = ["Tiddles", "Chairman Miaow", "Cheetara"].sample
  erb :named_cat
end

get '/' do
  erb :index
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb :named_cat
end

get '/secret' do
  "They were dead alien robots having a dream all along"
end
