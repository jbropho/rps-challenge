require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSapp < Sinatra::Base
  enable :sessions

  get '/play_ai' do
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

  post '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    @game = Game.new(@player_one => params[:p1].to_sym, @player_two => params[:p2].to_sym)
    @game.determine_winner
    erb :play
  end
end
