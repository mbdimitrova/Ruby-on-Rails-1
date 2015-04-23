class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def count
    @count = Brand.all.count
  end
end
