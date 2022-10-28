require 'rails_helper'

RSpec.describe ParksFacade do
  it 'can retrive all park data for a specific state', vcr: { record: :new_episodes } do
    park_data = ParksFacade.parks_in_state("TN")

    expect(park_data).to be_a(Array)
    expect(park_data[0]).to be_a(Park)
  end
end