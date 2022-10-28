class ParksService 
  def self.get_state_parks(state_abbv)
    response = conn.get("/api/v1/parks?stateCode=#{state_abbv}")
    parse(response.body)
  end

  private 

  def self.conn
    Faraday.new('https://developer.nps.gov') do |f|
      f.params['api_key'] = ENV['national_park_key']
    end
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

end