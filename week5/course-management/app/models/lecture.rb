class Lecture < ActiveRecord::Base
  has_many :tasks
  validates :name, :text, :tasks, presence: true
end
