class User < ApplicationRecord
  has_many :events_calendars
  
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
end
