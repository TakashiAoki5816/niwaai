require 'rails_helper'

describe Comment do
  describe '#create' do
    it "contentが空では投稿できないこと" do
      comment = build(:comment, content: "")
      comment.valid?
      expect(comment.errors[:content]).to include("を入力してください")
    end
  end
end