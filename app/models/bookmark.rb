class Bookmark < ApplicationRecord

  belongs_to :user
  belongs_to :post

  def bookmarks_by?(user)
    bookmarks.exists?(user_id: user.id)
  end

end
