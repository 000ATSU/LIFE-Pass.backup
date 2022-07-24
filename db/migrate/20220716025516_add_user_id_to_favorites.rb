class AddUserIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :post_id, :integer
  end
end
