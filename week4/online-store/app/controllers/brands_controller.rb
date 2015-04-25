class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def count
    @count = Brand.all.count
    render 'index'
  end

  def range
    start = params[:index].to_i
    @brands = get_brands(start)
    render 'index'
  end

  def range_count
    start, count = params[:index].to_i, params[:count].to_i
    @brands = get_brands(start, count)
    render 'index'
  end

  private

  def get_brands(start, count = 'all')
    if start < Brand.all.count
      brands = Brand.all[start..-1]
      count != 'all' ? brands.take(count) : brands
    else
      []
    end
  end
end
