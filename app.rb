require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/test' do
    'Testing Infrastructure Working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    redirect '/endgame' if @game.passive_player.hit_points <= 10
    @game.attack(@game.passive_player)
    @game.switch_turns
    erb :attack
  end

  get '/endgame' do
    erb :endgame
  end

  run! if app_file == $0
end