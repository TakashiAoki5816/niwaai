require 'rails_helper'

describe User do
  describe '#create' do
    it "ユーザー登録ができること" do
      user = build(:user)
      expect(user).to be_valid
    end
  end

  # presence: trueのバリデーション
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

  # 空でも登録できること
  describe '#create' do
    it "imageが空でも登録できること" do
      user = build(:user, image: "")
      expect(user).to be_valid
    end
  end

  # lengthのバリデーション
  describe '#create' do
    it "nameが11文字だと登録できないこと" do
      user = build(:user, name: "あああああああああああ")
      user.valid?
      expect(user.errors[:name]).to include("は10文字以内で入力してください")
    end
  end

  describe '#create' do
    it "nameが10文字だと登録できること" do
      user = build(:user, name: "ああああああああああ")
      expect(user).to be_valid
    end
  end

  describe '#create' do
    it "passwordが6文字だと登録できないこと" do
      user = build(:user, password: "000000")
      user.valid?
      expect(user.errors[:password]).to include("は7文字以上で入力してください")
    end
  end

  describe '#create' do
    it "passwordが7文字だと登録できること" do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      expect(user).to be_valid
    end
  end

  # uniqueness: trueのバリデーション
  describe '#create' do
    it "nameが同じだと登録できないこと" do
      user = create(:user)
      another_user = build(:user, name: user.name)
      another_user.valid?
      expect(another_user.errors[:name]).to include("はすでに存在します")
    end
  end

  describe '#create' do
    it "emailが同じだと登録できないこと" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
  end
end