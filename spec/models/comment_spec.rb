require 'rails_helper'

describe Comment do
  before(:each) do
    @user = create(:user)
    @post = create(:post, user_id: @user.id)
    @comment = build(:comment, post_id: @post.id, user_id: @user.id)
  end

  describe '#create' do
    it 'コメントの作成ができる' do
      expect(@comment).to be_valid
    end
    it "contentが空では投稿できないこと" do
      @comment.content = nil
      @comment.valid?
      expect(@comment.errors[:content]).to include("を入力してください")
    end
  end
end