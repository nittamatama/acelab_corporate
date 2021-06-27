class Post < ApplicationRecord
  has_many :likes, dependent: :destroy 
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  belongs_to :admin

  validates :title, presence: true
  validates :text,  presence: true
  has_one_attached :image

  def save_tags(savepost_tags)
    savepost_tags.each do |new_name|
      post_tag = Tag.find_or_create_by(tag_name: new_name)
      self.tags << post_tag
    end
  end

  def self.search(search)
    if search != ""
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
