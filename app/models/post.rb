class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :likes, dependent: :destroy 
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_many :comments
  belongs_to :admin
  belongs_to :category

  has_one_attached :image
  has_rich_text :content

  with_options presence: true do
    validates :title
    validates :content
  end

  validates :category_id, numericality: { other_than: 1, message: "が空なので登録できません" }


  
  def save_tags(savepost_tags)
    savepost_tags.each do |new_name|
      post_tag = Tag.find_or_create_by(tag_name: new_name)
      self.tags << post_tag
    end
  end

  def self.search(keyword)
    if keyword != ""
      Post.where('title LIKE(?)', "%#{keyword}%")
    else
      Post.all
    end
  end

end
