class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users

  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
