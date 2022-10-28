class ParksFacade 
  def self.parks_in_state(state_abbv)
    parks = ParksService.get_state_parks(state_abbv)
    parks[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end