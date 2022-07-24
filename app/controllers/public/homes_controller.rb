class Public::HomesController < ApplicationController
  def top
    @posts = Post.page(params[:page]).per(1)
    @user = User.all
    @rank = @user.sort_by{|favorites| favorites }
  end

  def about
  end
end
