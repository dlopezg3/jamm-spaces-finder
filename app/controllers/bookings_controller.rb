class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :delete]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @booking = Booking.new
    authorize @booking
    if @booking.save
      redirect_to booking_path
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:name, :address, :description, :instruments)
  end
end
