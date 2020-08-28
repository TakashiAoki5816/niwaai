class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post = current_user.posts
  end

  def likes
    @user = User.find(params[:id])
    @like = @user.likes
  end
end
