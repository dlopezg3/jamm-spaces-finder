class AddDurationToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :duration, :integer
  end
end
