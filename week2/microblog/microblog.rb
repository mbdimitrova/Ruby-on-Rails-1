require 'sinatra/base'
require 'bundler/setup'
require './Post.rb'

class Microblog < Sinatra::Application
  @@posts = []

  get '/' do
    haml :home, locals: {welcome_message: 'Welcome to microblog :)', posts: @@posts}
  end

  not_found do
    haml :not_found
  end

  get '/create' do
    haml :create
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
