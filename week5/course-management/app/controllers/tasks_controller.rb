class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id].to_i)
  end

  def new
    @tasks = Task.create(name: params[:name], description: params[:description], solutions: params[:solutions])
  end
end
