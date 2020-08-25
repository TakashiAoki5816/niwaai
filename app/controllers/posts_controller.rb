class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path, notice: '投稿されました'
    else
      flash.now[:alert] = '必須項目を入力してください。'
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:title, :garden_name, :image, :content).merge(user_id: current_user.id)
  end
end
