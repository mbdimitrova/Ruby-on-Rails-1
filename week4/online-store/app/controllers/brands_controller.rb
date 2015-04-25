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
    if start < Brand.all.count
      @brands = Brand.all[start..-1]
    else
      @brands = []
    end
    render 'index'
  end

  def range_count
    #TODO
  end
end
