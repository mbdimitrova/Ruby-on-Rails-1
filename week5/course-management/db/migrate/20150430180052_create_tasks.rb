class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :lecture
      t.string :name
      t.string :description
    end
  end
end
