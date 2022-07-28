class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :user_name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

end
