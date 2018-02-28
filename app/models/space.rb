class Space < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { in: 3..30, wrong_length: "Please choose a name with characters count between 3 and 30." }
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed." }

  geocoded_by :full_address #we have to change this to the interpolation mode {address} {city} {country}
  after_validation :geocode, if: :will_save_change_to_address?

  def full_address
    "#{address} #{city} #{country}"
  end
end
