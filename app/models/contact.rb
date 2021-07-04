class Contact < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :inquiry

  validates :inquiry_id, numericality: { other_than: 1 }
end
