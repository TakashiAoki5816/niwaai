require 'rails_helper'

describe User do
  describe '#create' do
    it "全てのカラムが存在する時にユーザー登録ができること" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end