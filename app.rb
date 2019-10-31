require 'sinatra/base'
require './lib/player'

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
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_HP = $player_2.hp
    erb :play

  end

  get "/attack" do
    $player_1.attack($player_2)
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :player_1_attack
  end

end
