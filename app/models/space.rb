class Space < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { in: 3..30, wrong_length: "Please choose a name with characters count between 3 and 30." }
  validates :address, presence: true
  validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed." }
  validates :price_per_hour, presence: true, numericality: {  greater_than_or_equal_to: 0 } # ERROR HERE
  geocoded_by :address #we have to change this to the interpolation mode {address} {city} {country}
  after_validation :geocode, if: :will_save_change_to_address?
end
