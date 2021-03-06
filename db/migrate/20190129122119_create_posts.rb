class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.float :average_rating, index: true
      t.integer :author_id, index: true

      t.timestamps
    end
  end
end
