require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  post '/players' do
    $game = Game.new( Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect "/play"

  end

  get '/play'do
    @game = $game
    erb :play
  end

  get "/attack" do

    @game = $game
    @game.attack_player(:player_2)
    erb :player_1_attack
  end

end
