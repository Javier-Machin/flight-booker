class FlightsController < ApplicationController
  def index
    unless params[:search].nil?
      @search_result = Flight.where(origin: params[:search][:origin], 
                                    destination: params[:search][:destination])
    end
  end
end
