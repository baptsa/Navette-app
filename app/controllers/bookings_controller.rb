class BookingsController < ApplicationController
 before_action :set_booking, only: [:show, :edit, :update, :destroy]


  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end


  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end


  def edit

  end

  def update
    @booking.update(booking_params)
    @booking.save

  end

  def destroy
    @booking.destroy
  end


private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:arrival_id, :departure_id, :user_id, :seat, :luggage, :statut)
  end


end
