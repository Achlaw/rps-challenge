require 'sinatra'

# get '/' do
#   "This is a form. haha not really but we're getting there."
# end

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
