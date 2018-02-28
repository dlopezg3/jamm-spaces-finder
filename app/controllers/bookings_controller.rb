class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :delete]
  before_action :set_space, only: [ :new, :create ]

  def index
    @bookings = Booking.all
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    authorize @booking

    byebug
    if @booking.save
      redirect_to space_booking_path(@space, @booking)
    else
      render :new
    end
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
    params.require(:booking).permit( :start_time, :duration)
  end

  def set_space
    @space = Space.find(params[:space_id])
  end
end
