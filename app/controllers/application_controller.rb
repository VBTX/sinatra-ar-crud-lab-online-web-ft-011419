
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
  erb :new
end
  post '/articles' do
  @articles
  erb :index
end

  get '/articles/:id' do
  @article = params[:id]
  erb :show
end

  get '/articles/:id/edit' do
  erb :edit
end

  patch '/articles/:id/edit' do

  end

  delete '/articles/:id' do

  end
end
