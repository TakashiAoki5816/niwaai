require 'rails_helper'

describe Like do
  before do
    @user = create(:user)
    @post = create(:post, user_id: @user.id)
    @like = build(:like, user_id: @user.id, post_id: @post.id)
  end

  describe '#create' do
    it "いいねが作成できること" do
      expect(@like).to be_valid
    end
  end
end