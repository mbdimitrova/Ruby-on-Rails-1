require 'sinatra/base'
require 'bundler/setup'
<<<<<<< HEAD
require './Post.rb'

class Microblog < Sinatra::Application
  @@posts = []

  get '/' do
    haml :home, locals: {welcome_message: 'Welcome to microblog :)', posts: @@posts}
=======

class Microblog < Sinatra::Application
  before do
    posts = []
  end

  get '/' do
    haml :home, locals: {:welcome_message => 'Welcome to microblog :)'}
>>>>>>> Initialize app and add BOOTSTRA.386 style
  end

  not_found do
    haml :not_found
  end

<<<<<<< HEAD
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

=======
>>>>>>> Initialize app and add BOOTSTRA.386 style
  run! if app_file == $0
end
