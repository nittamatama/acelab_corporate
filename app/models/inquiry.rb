class Inquiry < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '製品に関して' },
   { id: 3, name: '資料請求' },
   { id: 4, name: '採用に関して' },
   { id: 5, name: 'パートナー・提携に関して' },
   { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end