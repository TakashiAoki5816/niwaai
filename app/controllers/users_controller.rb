class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @post = current_user.posts
  end

  def likes
    @user = User.find(params[:id])
    @like = @user.likes
  end

  def following
    user = User.find(params[:user_id])
    @users = user.followings.all
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers.all
  end
end
