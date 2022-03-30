require 'rails_helper'

RSpec.describe 'the podcast edit' do
  it 'can edit the podcast and redirect to the podcast show page' do
    helman = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, years_active: 2)
    podcast_1 = helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "Cooking Perfect Short Ribs", length_in_minutes: 77, favorites: true)

    visit("/podcasts/#{podcast_1.id}/edit")
    fill_in 'Topic', with: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips"
    click_button 'Submit'

    expect(current_path).to eq("/podcasts/#{podcast_1.id}")
    expect(page).to have_content("Ep. 165: Getting Sued in Emergency Medicine - Practical Tips")

  end
end
