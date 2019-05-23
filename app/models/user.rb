class User < ApplicationRecord

  # Format of email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Validate name of user must be presence, length of name
  validates :name, presence: true, length: { maximum: 50 }

  #  Validate email of user must be presence, length of email
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }
end
