class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin!
  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to admin_categories_path
  end

  def index
    @categories = Category.all
    @category = Category.new
  end

private

  def category_params
    params.require(:category).permit(:category_name)
  end
end
