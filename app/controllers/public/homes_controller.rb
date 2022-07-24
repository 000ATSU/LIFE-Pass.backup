class Public::HomesController < ApplicationController
  def top
    @posts = Post.page(params[:page]).per(1)
    # post_favorite_count = {}
    # User.all.each do |user|
    #   post_favorite_count.store(user, Favorite.where(post_id: Post.where(user_id: user.id).pluck(:id)).count)
    # end
    # @user_post_favorite_ranks = post_favorite_count.sort_by { |_, v| v }.reverse.to_h.keys
    @rank = User.favorities.count.sort_by{ ||}
    binding.pry
  end

  def about
  end
end
