class Public::CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = Post.where(category_id: params[:id])
  end

end
