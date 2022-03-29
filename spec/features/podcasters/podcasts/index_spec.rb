require 'rails_helper'

RSpec.describe 'podcasters podcasts index' do
  it 'shows all the podcasts for the podcaster' do
    helman = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency   Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's   Podcast",years_active: 2, active: true)

    podcast_1 = helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    podcast_2 = helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "EM Quick Hits 36: Surviving Sepsis", length_in_minutes: 62, favorites: true)

    visit "/podcasters/#{helman.id}/podcasts"

    expect(page).to have_content(podcast_1.title)
    expect(page).to have_content(podcast_2.title)
  end

  it 'links to the all podcasters page' do
    visit '/podcasters/new'
    click_link 'All Podcasters'
    expect(current_path).to eq('/podcasters')
  end

  it 'links to the all podcasts page' do
    visit '/podcasters/new'
    click_link 'All Podcasts'
    expect(current_path).to eq('/podcasts')
  end

  it 'links to the create new podcast for this podcaster page' do
    helman = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency   Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's   Podcast",years_active: 2, active: true)

    podcast_1 = helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    visit "/podcasters/#{helman.id}/podcasts"

    expect(page).to have_link("Create Podcast")

    click_link("Create Podcast")
    expect(current_path).to eq("/podcasters/#{helman.id}/new")
  end
end
