require 'sinatra/base'
require './lib/player'
require './lib/game'

# get '/' do
#   "This is a form. haha not really but we're getting there."
# end
class RPS < Sinatra::Base
  # enable :sessions
  get '/' do
    erb(:index)
  end

  post '/ready' do
    @player = Player.new(params[:player])
    Game.start(@player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/select_rock' do
    @CPU_weapon = Game.choose
    erb(:rock)
  end

  get '/select_paper' do
    @CPU_weapon = Game.choose
    erb(:paper)
  end

  get '/select_scissors' do
    @CPU_weapon = Game.choose
    erb(:scissors)
  end

end
