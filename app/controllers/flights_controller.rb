class FlightsController < ApplicationController
  def index
    unless params[:search].nil?
      @search_result = Flight.where(origin: params[:search][:origin], 
                                    destination: params[:search][:destination])
      @passengers_num = params[:search][:passengers_num]
    end
  end
end
