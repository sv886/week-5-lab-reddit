class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url, unique: true, null: false
      t.integer :likes, default: 0

      t.timestamps null: false
    end
  end
end
