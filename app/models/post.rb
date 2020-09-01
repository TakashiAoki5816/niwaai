class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  mount_uploader :image, ImageUploader
  geocoded_by :address
  after_validation :geocode

  validates :title, :garden_name, :image, presence: true
end
