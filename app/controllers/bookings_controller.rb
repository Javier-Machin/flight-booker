class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight: Flight.find(params[:flight_selection][:flight]))
    @passengers = params[:flight_selection][:passenger_num]
  end
end
