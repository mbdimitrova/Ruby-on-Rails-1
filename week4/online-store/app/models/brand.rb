class Brand < ActiveRecord::Base
  validates :name, :description, presence: true
end
