require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World! with shotgun"
end

get '/secret' do
  "If you are on this page, and reading this, you should not be"
end

post '/name_cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/random_cat' do
  @name = ["Cameron", "Adrian", "AT", "CL"].sample
  erb(:index)
end

get '/cat_name' do
  erb(:cat_naming_form)
end
