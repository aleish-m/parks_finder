class ParksController < ApplicationController 
  def index
    @parks = ParksFacade.parks_in_state(params[:state])
    @park_count = @parks.count
  end
end