class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users

  has_one_attached :photo
end
