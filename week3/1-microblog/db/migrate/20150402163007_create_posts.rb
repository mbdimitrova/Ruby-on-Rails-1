class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :text

      t.timestamps null: false
    end
  end
end
