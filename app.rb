require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  post '/players' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect "/play"

  end

  get '/play'do

    @player_1 = $player_1
    @player_2 = $player_2
    erb :play

  end

  get "/attack" do

    @player_1 = $player_1
    @player_2 = $player_2
    Game.new.attack_player(@player_2)
    erb :player_1_attack
  end

end
