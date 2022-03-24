require 'rails_helper'

RSpec.describe 'the podcasters index page' do
  it 'displays a list of all podcasters' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine", podcast_names: "Emergency Medicine Cases", number_of_podcasts: 1, active: true)
    podcaster_2 = Podcaster.create!(name: "Dr. Scott Weingart", expertise: "Emergency Medicine and Critical Care", podcast_names: "EMCrit Podcast", number_of_podcasts: 1, active: true)

    visit "/podcasters"

    expect(page).to have_content(podcaster_1.name)
    expect(page).to have_content(podcaster_1.expertise)
    expect(page).to have_content(podcaster_2.name)
    expect(page).to have_content(podcaster_2.expertise)
    expect(page).to have_link("Back To Podcast Manager")
  end
end
