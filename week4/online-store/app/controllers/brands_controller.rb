class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def count
    @count = Brand.all.count
    render 'index'
  end

  def show
    @brands = [Brand.find(params[:id].to_i)]
    render 'index'
  end

  def range
    start = params[:id].to_i
    @brands = get_brands(start)
    render 'index'
  end

  def range_count
    start, count = params[:id].to_i, params[:count].to_i
    @brands = get_brands(start, count)
    render 'index'
  end

  def new
    @brand = Brand.create(name: params[:name], description: params[:description])
    redirect_to @brand
  end

  private

  def get_brands(start, count = 0)
    #TODO should be inside the model
    if start < Brand.all.count
      brands = Brand.all[start..-1]
      count == 0 ? brands : brands.take(count)
    else
      []
    end
  end
end
