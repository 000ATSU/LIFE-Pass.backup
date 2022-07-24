class ChangeCloumnsNotnullAddFavorites < ActiveRecord::Migration[5.0]
  def change
    change_column :favorites, :user_id, :integer, null: false
    change_column :favorites, :post_id, :integer, null: false
  end
end
