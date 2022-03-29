require 'rails_helper'

RSpec.describe 'the podcaster edit' do
  it 'links to the edit page' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, years_active: 2)
    visit "/podcasters/#{podcaster_1.id}"

    click_link("Update Podcaster")

    expect(current_path).to eq("/podcasters/#{podcaster_1.id}/edit")
  end

  it 'can edit the podcaster and redirect to podcasters show page' do
    podcaster_1 = Podcaster.create!(name: "Dr. Antom Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, years_active: 2)
    # visit "/podcasters/#{podcaster_1.id}"

    # click_link("Update Podcaster")
    visit "/podcasters/#{podcaster_1.id}/edit"
    fill_in 'Name', with: 'Dr. Anton Helman'
    click_button 'Submit'

    expect(current_path).to eq("/podcasters/#{podcaster_1.id}")
    expect(page).to have_content("Dr. Anton Helman")
  end
end
