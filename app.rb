require 'sinatra/base'

# get '/' do
#   "This is a form. haha not really but we're getting there."
# end
class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/ready' do
    p params
    @player = params[:player]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/select_rock' do
    redirect '/rock'
  end

  get '/rock' do
    @CPU_weapon = ["Rock", "Paper", "Scissors"].sample
    erb(:rock)
  end
end
