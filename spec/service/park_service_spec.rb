require 'rails_helper'

RSpec.describe ParksService do
  describe 'api endpoint' do
    it 'can get_state_parks info for a state', vcr: { record: :new_episodes } do
      parks_data = ParksService.get_state_parks("TN")

      expect(parks_data).to be_a(Hash)
      expect(parks_data).to have_key :data
      expect(parks_data[:data]).to be_an(Array)

      expect(parks_data[:data][0]).to have_key :fullName
      expect(parks_data[:data][0][:fullName]).to be_a(String)
      expect(parks_data[:data][0]).to have_key :description
      expect(parks_data[:data][0][:description]).to be_a(String)
      expect(parks_data[:data][0]).to have_key :directionsInfo
      expect(parks_data[:data][0][:directionsInfo]).to be_a(String)
      expect(parks_data[:data][0]).to have_key :operatingHours
      expect(parks_data[:data][0][:operatingHours]).to be_an(Array)

      expect(parks_data[:data][0][:operatingHours][0]).to have_key :standardHours
      expect(parks_data[:data][0][:operatingHours][0][:standardHours]).to be_a(Hash)
      expect(parks_data[:data][0][:operatingHours][0][:standardHours]).to have_key :wednesday
      expect(parks_data[:data][0][:operatingHours][0][:standardHours][:wednesday]).to be_a(String)
    end
  end
end