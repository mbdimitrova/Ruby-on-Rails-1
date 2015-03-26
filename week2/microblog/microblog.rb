require 'sinatra/base'
require 'bundler/setup'

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

  run! if app_file == $0
end
