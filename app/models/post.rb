class Post < ApplicationRecord
  has_many :likes, dependent: :destroy 
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  validates :title, presence: true
  validates :text,  presence: true
  has_one_attached :image
end
