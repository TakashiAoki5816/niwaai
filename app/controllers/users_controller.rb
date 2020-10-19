class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: "DESC").page(params[:page]).per(8)
  end

  def show
    @user = User.find(params[:id])
    @post = @user.posts
  end

  def likes
    @user = User.find(params[:id])
    @likes = @user.likes.page(params[:page]).per(6)
  end

  def following
    @user = User.find(params[:user_id])
    @users = @user.followings.all.page(params[:page]).per(6)
  end

  def followers
    @user = User.find(params[:user_id])
    @users = @user.followers.all.page(params[:page]).per(6)
  end

  def posts
    @user = User.find(params[:user_id])
    @posts = @user.posts.all.page(params[:page]).per(6)
  end
end
