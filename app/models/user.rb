class User < ApplicationRecord
  # Validate name of user must be presence
  validates :name, presence: true
end
