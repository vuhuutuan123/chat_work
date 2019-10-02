class User < ApplicationRecord
  has_many :user_rooms, dependent: :destroy
  has_many :rooms, through: :user_rooms
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :messages

  validates :email, uniqueness: true
  validates :name, presence: true
end
