require 'rails_helper'

describe Post do
  before do
    @user = create(:user)
    @post = build(:post, user_id: @user.id)
  end

  describe '#create' do
    it "投稿が作成できること" do
      expect(@post).to be_valid
    end

    it "garden_nameが空では登録できないこと" do
      post = build(:post, garden_name: "")
      post.valid?
      expect(post.errors[:garden_name]).to include("を入力してください")
    end

    it "titleが空では登録できないこと" do
      post = build(:post, title: "")
      post.valid?
      expect(post.errors[:title]).to include("を入力してください")
    end

    it "imageが空では登録できないこと" do
      post = build(:post, image: "")
      post.valid?
      expect(post.errors[:image]).to include("を入力してください")
    end
  end

end