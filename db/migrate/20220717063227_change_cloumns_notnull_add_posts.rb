class ChangeCloumnsNotnullAddPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :user_id, :integer, null: false
    change_column :posts, :category_id, :integer, null: false
  end
end
