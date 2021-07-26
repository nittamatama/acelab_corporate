class Category < ActiveHash::Base
 self.data = [
   { id: 1, name: '--' },
   { id: 2, name: 'カテゴリ1' },
   { id: 3, name: 'カテゴリ2' },
   { id: 4, name: 'カテゴリ3' },
   { id: 5, name: 'カテゴリ4' }
 ]

 include ActiveHash::Associations
 has_many :category

 end