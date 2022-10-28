require "rails_helper.rb"

RSpec.describe "Park Index Page", type: :feature do
  describe "As a user" do

    before :each, vcr: { record: :new_episodes } do
      @parks = ParksFacade.parks_in_state('TN')

      visit root_path
    end

    it "When I select 'Tennessee' from the form, And click on 'Find Parks', I am taken to a parks page", vcr: { record: :new_episodes } do
      select("Tennessee", from: "state")
      click_button "Find Parks"

      expect(current_path).to eq parks_path
    end
    
    it 'I see the total of parks found and for each park I see: full name of the park, description, direction info, standard hours of operation', vcr: { record: :new_episodes } do
      select("Tennessee", from: "state")
      click_button "Find Parks"

      within("#park-info") do
        expect(page).to have_content(@parks.count)
          within("#park-0") do
            expect(page).to have_content(@parks[0].name)
            expect(page).to have_content(@parks[0].description)
            expect(page).to have_content(@parks[0].directions)
            expect(page).to have_content("Monday: #{@parks[0].hours[:monday]}")
            expect(page).to have_content("Tuesday: #{@parks[0].hours[:tuesday]}")
            expect(page).to have_content("Wednesday: #{@parks[0].hours[:wednesday]}")
            expect(page).to have_content("Thursday: #{@parks[0].hours[:thursday]}")
            expect(page).to have_content("Friday: #{@parks[0].hours[:friday]}")
            expect(page).to have_content("Saturday: #{@parks[0].hours[:saturday]}")
            expect(page).to have_content("Sunday: #{@parks[0].hours[:sunday]}")
        end
      end
    end
  end
    
end
