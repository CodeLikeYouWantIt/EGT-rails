class Series < ApplicationRecord
  has_many :posts
  belongs_to :user

  validates :title, uniqueness: true
end
