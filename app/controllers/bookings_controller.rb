class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :delete]
  def index
  end

  def show
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:name, :address, :description, :instruments)
  end
end
