require 'rails_helper'

RSpec.describe Park do
  it 'has info about a park' do
    data = {
        id: "D35004EF-5F5A-4DA4-8716-5141BE5C933C",
        url: "https://www.nps.gov/amch/index.htm",
        fullName: "Amache National Historic Site",
        parkCode: "amch",
        "description": "Amache, also known as the Granada Relocation Center, near Granada, Colorado was one of ten incarceration sites established by the War Relocation Authority during World War II to unjustly incarcerate Japanese Americans. Over 10,000 people, most American citizens, were incarcerated at Amache from 1942-1945. Amache - a place to reflect, recommit, and further the pursuit of freedom and justice.",
        latitude: "38.04962",
        longitude: "-102.32903",
        latLong: "lat:38.04962, long:-102.32903",
        activities: [],
        topics: [
          {
            id: "351EE154-87AA-46B0-BBA1-ED604368ACE9",
            name: "Incarceration"
          },
          {
            id: "367BC636-6F02-4F1B-BEAA-5A20E46C7207",
            name: "Japanese-American Internment"
          }
        ],
        states: "CO",
        contacts: {
          phoneNumbers: [],
          emailAddresses: [
            {
              description: "Park Information",
              emailAddress: "Amache_visitor_information@nps.gov"
            }
          ]
        },
        entranceFees: [
          {
            cost: "0.00",
            description: "There are no entrance fees.",
            title: "Entrance Fees"
          }
        ],
        entrancePasses: [],
        fees: [],
        directionsInfo: "Amache National Historic Site is in southeastern Colorado about 1.5 miles west of the town of Granada, 17.5 miles east of Lamar, and half an hour drive from the Kansas border. The site is located off Highway 385/50 along the Santa Fe Trail.",
        directionsUrl: "https://www.nps.gov/amch/planyourvisit/directions.htm",
        operatingHours: [
          {
            exceptions: [],
            description: "The site is currently open to the public with limited hours and services. For the foreseeable future, the site will continue to be managed by the Amache Preservation Society in cooperation with the town of Granada. The site currently consists of a cemetery, a monument, building foundations, and landscaping. Interpretive panels and a downloadable self-guided auto tour are available on amache.org to assist with navigation of the site.",
            standardHours: {
              wednesday: "Sunrise to Sunset",
              monday: "Sunrise to Sunset",
              thursday: "Sunrise to Sunset",
              sunday: "Sunrise to Sunset",
              tuesday: "Sunrise to Sunset",
              friday: "Sunrise to Sunset",
              saturday: "Sunrise to Sunset"
            },
            name: "Amache National Historic Site"
          }
        ],
        addresses: [
          {
            postalCode: "81041",
            city: "Granada",
            stateCode: "CO",
            line1: "County Rd 23 5/10",
            type: "Physical",
            line3: "",
            line2: ""
          },
          {
            postalCode: "81050",
            city: "La Junta",
            stateCode: "CO",
            line1: "Amache National Historic Site",
            type: "Mailing",
            line3: "35110 State Highway 194",
            line2: "c/o High Plains Group Superintendent"
          }
        ],
        images: [
          {
            credit: "NPS Photo / Stuart West",
            title: "Amache Barracks and Guard Tower",
            altText: "reconstructed barracks, guard and water towers surrounded by brown grass and shrubs.",
            caption: "Reconstructed barracks, guard and water towers at the newly designated Amache National Historic Site",
            url: "https://www.nps.gov/common/uploads/structured_data/C1E570C9-C140-0E81-EDDC02810B0B7EAE.jpg"
          } 
        ],
        weatherInfo: "The site is located in Colorado on the High Plains, an arid, windy, and sunny environment. Temperatures and conditions can be extreme in this region, with hot, arid summers that include occasional thunderstorms and tornadoes, as well as cold and snowy winters.",
        name: "Amache",
        designation: "National Historic Site"
      }

    park = Park.new(data)
        
    expect(park.name).to eq("Amache National Historic Site")
    expect(park.description).to eq("Amache, also known as the Granada Relocation Center, near Granada, Colorado was one of ten incarceration sites established by the War Relocation Authority during World War II to unjustly incarcerate Japanese Americans. Over 10,000 people, most American citizens, were incarcerated at Amache from 1942-1945. Amache - a place to reflect, recommit, and further the pursuit of freedom and justice.")
    expect(park.directions).to eq("Amache National Historic Site is in southeastern Colorado about 1.5 miles west of the town of Granada, 17.5 miles east of Lamar, and half an hour drive from the Kansas border. The site is located off Highway 385/50 along the Santa Fe Trail.")
    expect(park.hours).to eq({
                wednesday: "Sunrise to Sunset",
                monday: "Sunrise to Sunset",
                thursday: "Sunrise to Sunset",
                sunday: "Sunrise to Sunset",
                tuesday: "Sunrise to Sunset",
                friday: "Sunrise to Sunset",
                saturday: "Sunrise to Sunset"
              })
  end
end