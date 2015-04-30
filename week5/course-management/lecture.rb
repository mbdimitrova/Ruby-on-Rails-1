class Lecture < ActiveRecord::Base
  has_many :tasks
  validates :name, :test, :tasks, presence: true
end
