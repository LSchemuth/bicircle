class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users 
#through reservations?
  has_many_attached :photos
end
