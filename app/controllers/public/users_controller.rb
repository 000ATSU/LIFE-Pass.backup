class Public::UsersController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @posts = @user.posts
  end

  def show
    @user = User.find(current_user.id)
    @bookmarks = @user.bookmarks
  end

end
