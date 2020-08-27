class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader

  validates :title, :garden_name, :image, presence: true
end
