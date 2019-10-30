require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Begin!"
  end
end
