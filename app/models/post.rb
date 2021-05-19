class Post < ApplicationRecord
  has_many :likes, dependent: :destroy 

  validates :title, presence: true
  validates :text,  presence: true
  has_one_attached :image
end
