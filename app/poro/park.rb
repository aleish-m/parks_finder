class Park 
  attr_reader :name, :description, :directions, :hours

  def initialize(park_data)
    @name = park_data[:fullName]
    @description = park_data[:description]
    @directions = park_data[:directionsInfo]
    @hours = park_data[:operatingHours][0][:standardHours]
  end
end