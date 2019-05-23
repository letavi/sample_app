class Micropost < ApplicationRecord

  # Define association with user
  belongs_to :user
  # Validate for title
  validates :title, prsence: true, length: { in: 5..100 }
  
  # Validate for content
  validates :contant, prsence: true, length: { in: 5..1000 } 
end
