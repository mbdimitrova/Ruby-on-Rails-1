require 'sinatra/base'
require 'bundler/setup'
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
require './Post.rb'
=======
require './models/post.rb'
>>>>>>> Use erb instead of haml :pensive:

class Microblog < Sinatra::Application
  @@posts = []

  get '/' do
<<<<<<< HEAD
    haml :home, locals: {welcome_message: 'Welcome to microblog :)', posts: @@posts}
=======
=======
require './Post.rb'
>>>>>>> Implement creating of a post, add a Post class

class Microblog < Sinatra::Application
  @@posts = []

  get '/' do
<<<<<<< HEAD
    haml :home, locals: {:welcome_message => 'Welcome to microblog :)'}
>>>>>>> Initialize app and add BOOTSTRA.386 style
=======
    haml :home, locals: {welcome_message: 'Welcome to microblog :)', posts: @@posts}
>>>>>>> Implement creating of a post, add a Post class
=======
    erb :home, locals: {welcome_message: 'Welcome to microblog :)', posts: @@posts}
>>>>>>> Use erb instead of haml :pensive:
  end

  not_found do
    erb :not_found
  end

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Implement creating of a post, add a Post class
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

<<<<<<< HEAD
=======
>>>>>>> Initialize app and add BOOTSTRA.386 style
=======
>>>>>>> Implement creating of a post, add a Post class
=======

class Microblog < Sinatra::Application
  before do
    posts = []
  end

  get '/' do
    haml :home, locals: {:welcome_message => 'Welcome to microblog :)'}
  end

  not_found do
    haml :not_found
  end

>>>>>>> Initialize app and add BOOTSTRA.386 style
  run! if app_file == $0
end
