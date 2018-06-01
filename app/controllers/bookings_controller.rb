class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight: Flight.find(params[:flight_selection][:flight]))
    @passengers_num = params[:flight_selection][:passengers_num]
  end

  def create
  end
end
