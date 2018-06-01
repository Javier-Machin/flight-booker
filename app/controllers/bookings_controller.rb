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
      @booking = Booking.new(flight: Flight.find(params[:booking][:flight]),
                             passenger_attributes: {name: params[:passengers][:"name#{index+1}"],
                                                    email: params[:passengers][:"email#{index+1}"]})

      # @booking.passenger_attributes = {name: params[:passengers][:"name#{index+1}"],
      #                                  email: params[:passengers][:"email#{index+1}"]}
      
      @booking.save
    end

    redirect_to bookings_path
  end
end
