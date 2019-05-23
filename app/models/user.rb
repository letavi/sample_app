class User < ApplicationRecord
  # Validate name of user must be presence, length of name
  validates :name, presence: true, length: { maximum: 50 }

  #  Validate email of user must be presence, length of email
  validates :email, presence: true, length: { maximum: 255 }
end
