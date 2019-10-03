class User < ApplicationRecord
  has_many :user_rooms, dependent: :destroy
  has_many :rooms, through: :user_rooms
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :active_friends, through: :friendships, source: :friend
  has_many :passive_friendships, class_name: 'Friendship', foreign_key: 'friend_id'
  has_many :passive_friends, through: :passive_friendships, source: 'user'
  has_many :messages
  has_many :permissions

  validates :email, uniqueness: true
  validates :name, presence: true

  def friends
    User.where("id = ? OR id = ?", active_friends.pluck(:friend_id), passive_friends.pluck(:user_id))
  end
end
