require 'sinatra/base'
require 'bundler/setup'
require './models/post.rb'

class Microblog < Sinatra::Application
  @@posts = []

  get '/' do
    erb :home, locals: {welcome_message: 'Welcome to microblog :)', posts: @@posts}
  end

  not_found do
    erb :not_found
  end

  get '/create' do
    erb :create
  end

  post '/create' do
    new_post = Post.new()
    new_post.title = params[:title]
    new_post.text = params[:text]
    @@posts << new_post
    redirect '/'
  end

  run! if app_file == $0
end
