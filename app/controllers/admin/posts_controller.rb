class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!
  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    # admin_user_pathにリダイレクトするとエラー発生
    redirect_to admin_users_path
  end

end
