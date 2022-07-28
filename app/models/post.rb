class Post < ApplicationRecord

  validates :post_title, presence: true
  validates :post_text, presence: true, length: {maximum: 250}

  belongs_to :user
  belongs_to :category
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  def bookmarked_by?(user)
    bookmarks.exists?(user_id: user.id)
  end

  def Post.search(keyword)

    where(["post_title like? OR post_text like?", "%#{keyword}%", "%#{keyword}%"])
  end

end
