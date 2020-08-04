class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
