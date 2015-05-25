class HomeController < ApplicationController
  include HomeHelper

  def index
    @tweets = fetch_tweets
  end
end
