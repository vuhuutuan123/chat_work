class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room

  enum role: {admin: 1, member: 0}
end
