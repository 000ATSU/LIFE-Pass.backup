class AddUserIdToBookmarks < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :user_id, :integer
    add_column :bookmarks, :post_id, :integer
  end
end
