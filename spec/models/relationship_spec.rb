require 'rails_helper'

describe Relationship do
  describe '#create' do
    it "user_idが空ではフォローできないこと" do
      relationship = build(:relationship, user_id: "")
      relationship.valid?
      expect(relationship.errors[:user_id]).to include("を入力してください")
    end

    it "follow_idが空ではフォローできないこと" do
      relationship = build(:relationship, follow_id: "")
      relationship.valid?
      expect(relationship.errors[:follow_id]).to include("を入力してください")
    end
  end

end