require 'sinatra/base'
require './lib/player'
require './lib/game'

# get '/' do
#   "This is a form. haha not really but we're getting there."
# end
class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/ready' do
    p params
    @player = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = params[:player]
    erb(:play)
  end

  get '/select_rock' do
    redirect '/rock'
  end

  get '/select_paper' do
    redirect '/paper'
  end

  get '/rock' do
    @CPU_weapon = ["Rock", "Paper", "Scissors"].sample
    erb(:rock)
  end

  get '/paper' do
    @CPU_weapon = ["Rock", "Paper", "Scissors"].sample
    erb(:paper)
  end

end
