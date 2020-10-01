require 'rails_helper'

describe User do
  describe '#create' do
    it "全てのカラムが存在する時にユーザー登録ができること" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
  #presence: trueになっているか
  describe '#create' do
    it "nameが空では登録できないこと" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "emailが空では登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "passwordが空では登録できないこと" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "password_confirmationが空では登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end
  end

  #空でも登録できること
  describe '#create' do
    it "imageが空でも登録できること" do
      user = build(:user, image: "")
      expect(user).to be_valid
    end
  end


end