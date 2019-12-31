require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing Infrastructure Working!'
  end

  run! if app_file == $0
end