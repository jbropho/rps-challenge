require 'sinatra/base'
require './lib/player'

class RPSapp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = Player.new(params[:player_one])
    session[:player_two] = Player.new(params[:player_two])
    redirect to '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb :play
  end
end
