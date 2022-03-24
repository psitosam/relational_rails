require 'rails_helper'

RSpec.describe 'the podcasters show page' do
  it "visitor to podcasters/:id sees the podcaster with that id including the podcaster's attributes" do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine", podcast_names: "Emergency Medicine Cases", number_of_podcasts: 1, active: true)
    visit "/podcasters/#{podcaster_1.id}"
    save_and_open_page
    expect(page).to have_content("Name : #{podcaster_1.name}")
    expect(page).to have_content(podcaster_1.expertise)
    expect(page).to have_content(podcaster_1.podcast_names)
    expect(page).to have_content(podcaster_1.number_of_podcasts)
    expect(page).to have_content(podcaster_1.active)

  end
end
