class FlightsController < ApplicationController
  def index
    unless params[:search].nil?
      @search_result = Flight.where(origin: params[:search][:origin], 
                                    destination: params[:search][:destination],
                                    departure: DateTime.parse(params[:search][:date]))
      @passengers_num = params[:search][:passenger_num]
    end
  end
end
