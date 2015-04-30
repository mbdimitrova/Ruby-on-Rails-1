class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def show
    @lectures = Lecture.find(params[:id].to_i)
  end

  def new
    @lectures = Lectures.create(name: params[:name], text: params[:text], tasks: params[:tasks])
  end
end
