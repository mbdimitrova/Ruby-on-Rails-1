class Brand < ActiveRecord::Base
  attr_accessor :name, :description
  validates :name, description: true
end
