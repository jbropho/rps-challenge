require 'sinatra/base'

class RPSapp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
end
