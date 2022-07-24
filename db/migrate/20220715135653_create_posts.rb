class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :post_title, null: false
      t.string :post_text, null: false
      t.timestamps
    end
  end
end
