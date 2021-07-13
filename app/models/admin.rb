class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true

  has_many :posts

  before_action :authenticate_admin!

  

  def full_name
    @admin = current_admin.id
    self.first_name + self.last_name
  end
  
end
