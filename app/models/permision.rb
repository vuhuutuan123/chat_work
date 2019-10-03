class Permision < ApplicationRecord
  belongs_to :users
  belongs_to :room

  validates :user_id, uniqueness: { scope: :room_id }

  enum role: {member: 0, admin: 1, reader: 2}
end
