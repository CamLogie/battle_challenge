require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World! with shotgun"
end

get '/secret' do
  "If you are on this page, and reading this, you should not be"
end

get '/cat' do
  @name_selector = ["Cameron", "Adrian", "AT", "CL"].sample
  erb(:index)
end