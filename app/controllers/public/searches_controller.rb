class Public::SearchesController < ApplicationController

  def search
    @posts = Post.search(params[:keyword])
    render 'search_result'
  end

end
