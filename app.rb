require 'sinatra/base'

class RPSapp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p "#{params}"
  end
end
