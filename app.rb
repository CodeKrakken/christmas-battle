require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing Infrastructure Working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    redirect '/endgame' if @game.passive_player.hit_points <= 10
    @game.attack(@game.passive_player)
    @game.switch_turns
    erb :attack
  end

  get '/endgame' do
    @game = $game
    erb :endgame
  end

  run! if app_file == $0
end