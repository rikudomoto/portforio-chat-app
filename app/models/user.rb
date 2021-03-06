class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # nameが空の場合保存しない
  validates :name, presence: true
  # nameが空の場合保存しない

  has_many :room_users
  has_many :rooms, through: :room_users
end