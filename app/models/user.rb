class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :password, length: {minimum:6}

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :series

end
