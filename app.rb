require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World! with shotgun"
end

get '/secret' do
  "If you are on this page, and reading this, you should not be"
end

get '/name_cat' do
  p params
  @name_selector = params[:name]
  erb(:index)
end

get '/random_cat' do
  @name_selector = ["Cameron", "Adrian", "AT", "CL"].sample
  erb(:index)
end