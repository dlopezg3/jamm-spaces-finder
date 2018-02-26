class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user

  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :total_price, presence: true
end
