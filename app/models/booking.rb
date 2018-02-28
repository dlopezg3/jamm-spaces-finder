class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user

  validates :start_time, presence: true
end
