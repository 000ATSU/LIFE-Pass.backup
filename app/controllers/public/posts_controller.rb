class Public::PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to users_path(current_user.id)
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

private

  def post_params
    params.require(:post).permit(:post_title, :post_text, :user_id, :category_id )
  end

end

