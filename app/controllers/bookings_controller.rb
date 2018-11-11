class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight: Flight.find(params[:flight_selection][:flight]))
    @passengers_num = params[:flight_selection][:passengers_num]
  end

  def index
    !params[:bookings].blank? ? @bookings = Booking.where(id: params[:bookings]).all : @bookings = Booking.all
  end 

  def create
    @passengers_num = params[:booking][:passengers_num].to_i
    @created_bookings = []
    
    @passengers_num.times do |index|
      @booking = Booking.new(
        flight: Flight.find(booking_params[:flight]), 
        passenger_attributes: {name:  passenger_params[:"name#{index + 1}"], 
                               email: passenger_params[:"email#{index + 1}"]})
      @booking.save
      @created_bookings << @booking
    end
    flash[:notice] = "Congratulations! Your flight has been booked"
    redirect_to controller: 'bookings', action: 'index', bookings: @created_bookings
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
