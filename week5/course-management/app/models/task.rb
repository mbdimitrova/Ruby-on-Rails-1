class Task < ActiveRecord::Base
  has_many :solutions
  validates :name, :description, :solutions, presence: true
end
