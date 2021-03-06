class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_space, only: [ :new, :create ]

  def index
    @bookings = policy_scope(Booking.where(user: current_user))
  end

  def show
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
    @price_hour = @space.price_per_hour
    @total_price = @price_hour * @booking.duration
    @booking.total_price = @total_price.to_i

    if @booking.save
      redirect_to bookings_path(@space, @booking)
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
    @booking.delete
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit( :start_time, :duration)
  end

  def set_space
    @space = Space.find(params[:space_id])
  end
end
