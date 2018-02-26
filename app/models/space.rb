class Space < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { in: 3..30, wrong_length: "Please choose a name with characters count between 3 and 30." }
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed." }
end
