class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.page(params[:page]).per(4)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(1)
  end

end
