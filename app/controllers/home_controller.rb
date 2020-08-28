class HomeController < ApplicationController
  def index
    @posts = Post.includes(:user)
    @like = Like.new
  end
end
