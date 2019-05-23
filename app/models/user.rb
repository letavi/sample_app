class User < ApplicationRecord

  # Sure that email of user must lowercase format before it is saved to database
  before_save { email.downcase! }

  # Format of email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Validate name of user must be presence, length of name
  validates :name, presence: true, length: { maximum: 50 }

  #  Validate email of user must be presence, length of email
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false } 
  
  # Add secure password for user
  has_secure_password

  #  Validate for password of user
  validates :password, presence: true, length: { minimum: 6 }

  # Define association with micropost
  has_many :microposts, dependent: :destroy
end
