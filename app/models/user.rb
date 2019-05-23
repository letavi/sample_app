class User < ApplicationRecord
  # Validate name of user must be presence
  validates :name, presence: true

  #  Validate email of user must be presence
  validates :email, presence: true
end
