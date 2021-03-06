class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  def index
    @posts = Post.all.order(created_at: "DESC").page(params[:page]).per(6)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to post_path(@post), notice: '投稿が作成されました。'
    else
      flash.now[:alert] = '必須項目を入力してください。'
      render :new
    end
  end

  def search
    @posts = Post.search(params[:keyword])
    @keyword = params[:keyword]
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like = Like.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path(post), notice: '投稿を編集しました。'
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to root_path, notice: '投稿を削除しました。'
    else
      render :edit
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :garden_name, :image, :content, :address, :latitude, :longitude).merge(user_id: current_user.id)
  end
end
