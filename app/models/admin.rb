class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :posts
  
         with_options presence: true do
           validates :first_name, :last_name,
             format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/, message: "を入力してください"}
           validates :password,
             format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数字のみ登録可能です" }
           validates :email, uniqueness: true,
             format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "は半角英数字のみ登録可能です" }
         end

  def full_name
    self.first_name + " " + self.last_name
  end
  
end
