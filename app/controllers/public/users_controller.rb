class Public::UsersController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @posts = @user.posts
    @get_favorite = Favorite.where(post_id: @posts.ids)
    # binding.pry
  end

  def show
    @user = User.find(current_user.id)
    @bookmarks = @user.bookmarks
  end

end
