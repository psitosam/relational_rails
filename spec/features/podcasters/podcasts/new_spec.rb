require 'rails_helper'

RSpec.describe 'the podcasters podcast creation' do
  it 'links to the podcasters podcasts page' do
    helman = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's Podcast",years_active: 2, active: true)
    visit "/podcasters/#{helman.id}/podcasts"

    click_link("Create Podcast")
    expect(current_path).to eq("/podcasters/#{helman.id}/new")
  end

  it 'can create a new podcast' do
    helman = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's Podcast",years_active: 2, active: true)
    visit("/podcasters/#{helman.id}/new")

    
    fill_in 'Title', with: 'Emergency Medicine Cases'
    fill_in 'Topic', with: 'Outpatient Medications for COVID 19'
    fill_in 'Length in minutes', with: '98'
    check 'Favorites'
    click_button 'Create Podcast'

    expect(current_path).to eq("/podcasters/#{helman.id}/podcasts")
    expect(page).to have_content("Outpatient Medications for COVID 19")
  end
end
