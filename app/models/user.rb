class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  has_one :user_role
  has_one :role, through: :user_role
end
