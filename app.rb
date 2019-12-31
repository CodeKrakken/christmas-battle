require 'sinatra'

get '/' do
  "Hello"
end

get '/secret' do
  "They were dead alien robots having a dream all along"
end

get '/bumwag' do
  "wagging and waggling bums"
end

get '/cat' do
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end