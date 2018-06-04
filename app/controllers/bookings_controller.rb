class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight: Flight.find(params[:flight_selection][:flight]))
    @passengers_num = params[:flight_selection][:passengers_num]
  end

  def index
    @bookings = Booking.all
  end 

  def create
    @passengers_num = params[:booking][:passengers_num].to_i
    
    @passengers_num.times do |index|
      @booking = Booking.new(
        flight: Flight.find(booking_params[:flight]), 
        passenger_attributes: {name:  passenger_params[:"name#{index + 1}"], 
                               email: passenger_params[:"email#{index + 1}"]})
    end

    redirect_to bookings_path
  end

  private

    def booking_params
      params.require(:booking).permit(:flight)
    end

    def passenger_params
      params.require(:passengers).permit(:name1, :name2, :name3, :name4, 
                                         :email1, :email2, :email3, :email4)
    end 
end
