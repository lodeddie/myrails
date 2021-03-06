class User < ActiveRecord::Base
  has_secure_password
  has_many :ideas, dependent: :destroy
  has_many :likes, dependent: :destroy


  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :alias, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  
end
