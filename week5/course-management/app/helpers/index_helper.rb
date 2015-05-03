module IndexHelper
  def list_preview(items, name)
    if items and items.count > 0
      items.collect { |item| item.name}
    else
      ["There aren't any #{name} yet :("]
    end
  end
end
