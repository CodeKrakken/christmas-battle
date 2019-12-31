require 'sinatra'

get '/random-cat' do
  @cat_name = ["Tiddles", "Chairman Miaow", "Cheetara"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end

get '/secret' do
  "They were dead alien robots having a dream all along"
end

get '/bumwag' do
  "wagging and waggling bums"
end
