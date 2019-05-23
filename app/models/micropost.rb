class Micropost < ApplicationRecord

  # Define association with user
  belongs_to :user
  # Validate for title
  validates :title, presence: true, length: { in: 5..100 }
  
  # Validate for content
  validates :content, presence: true, length: { in: 5..1000 } 
end
