require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/ai_opponent'

class RPSapp < Sinatra::Base
  enable :sessions

  get '/play_ai' do
    erb :index
  end

  post '/single-player-names' do
    session[:player_one] = Player.new(params[:player_one])
    redirect to '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    erb :play
  end

  post '/play' do
    @player_one = session[:player_one]
    @player_one.choice = params[:p1].to_sym
    @game = Game.new(@player_one, AiOpponent.new)
    @game.determine_winner
    erb :play
  end
end
