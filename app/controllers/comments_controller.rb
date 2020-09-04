class CommentsController < ApplicationController
  before_action :set_post
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
