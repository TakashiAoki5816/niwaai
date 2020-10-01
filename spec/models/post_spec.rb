require 'rails_helper'

# presence: trueのバリデーション
describe Post do
  describe '#create' do
    it "garden_nameが空では登録できないこと" do
      post = build(:post, garden_name: "")
      post.valid?
      expect(post.errors[:garden_name]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "titleが空では登録できないこと" do
      post = build(:post, title: "")
      post.valid?
      expect(post.errors[:title]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "imageが空では登録できないこと" do
      post = build(:post, image: "")
      post.valid?
      expect(post.errors[:image]).to include("を入力してください")
    end
  end

end