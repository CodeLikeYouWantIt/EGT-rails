class Series < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :user

  validates :title, uniqueness: true
end
