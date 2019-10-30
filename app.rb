require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  post '/players' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect "/play"

  end

  get '/play'do
    @player_1_name = session[:player_1]
    @player_2_name = session[:player_2]
    erb :play
  end
end
