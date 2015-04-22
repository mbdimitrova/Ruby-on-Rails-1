module BrandsHelper
  def brands_count
    if @brands and not @brands.empty?
      return @brands.count
    else
      return 0
    end
  end
end
