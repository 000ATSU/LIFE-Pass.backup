class Public::HomesController < ApplicationController
  def top
    @posts = Post.page(params[:page]).per(6)
    @users = User.all
    @rank = @users.map do |user|
      user.favorites.count
    end
    # @rank = Favorite.group(:post_id).order('count(post_id) desc').limit(5)
    # @rank.each {|v| v.user.user_name}
    # binding.pry
  end

  def about
  end
end
