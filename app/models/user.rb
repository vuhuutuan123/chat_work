class User < ApplicationRecord
  has_many :user_rooms, dependent: :destroy
  has_many :rooms, through: :user_rooms
  has_many :messages
  has_many :permissions

  validates :email, uniqueness: true
  validates :name, presence: true

end
