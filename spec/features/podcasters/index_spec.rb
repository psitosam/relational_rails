require 'rails_helper'

RSpec.describe 'the podcasters index page', type: :feature do
  it 'displays a list of all podcaster names' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency   Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's   Podcast",years_active: 2, active: true)

    podcaster_2 = Podcaster.create!(name: "Dr. Scott Weingart", expertise: "EmergencyMedicine,  Critical Care, Academic Productivity, Philosophy", podcast_names: "EMCritPodcast, On Deeper   Reflection", years_active: 2, active: true)

    podcaster_3 = Podcaster.create!(name: "Sam Harris", podcast_names: "Making Sense",expertise:  "Neuroscience, Philosophy, Current Events", active: true, years_active: 1)

    visit "/podcasters"

    expect(page).to have_content(podcaster_1.name)
    expect(page).to have_content(podcaster_2.name)
    expect(page).to have_content(podcaster_3.name)

  end

  it 'podcasters are ordered by most recently created first and next to each of the records I see when it was created' do

    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's Podcast",years_active: 2, active: true)

    podcaster_2 = Podcaster.create!(name: "Dr. Scott Weingart", expertise: "EmergencyMedicine, Critical Care, Academic Productivity, Philosophy", podcast_names: "EMCritPodcast, On Deeper Reflection", years_active: 2, active: true)

    podcaster_3 = Podcaster.create!(name: "Sam Harris", podcast_names: "Making Sense",expertise: "Neuroscience, Philosophy, Current Events", active: true, years_active: 1)
    visit "/podcasters"

    expect(page.text.index(podcaster_3.name)).to be < (page.text.index(podcaster_2.name))
    expect(page.text.index(podcaster_2.name)).to be < (page.text.index(podcaster_1.name))
    expect(page).to have_content(podcaster_1.created_at)
    expect(page).to have_content(podcaster_2.created_at)
    expect(page).to have_content(podcaster_3.created_at)
  end

  it 'links to the all podcasts page' do
    visit '/podcasters'
    click_link 'All Podcasts'

    expect(current_path).to eq('/podcasts')
  end

  it 'links to the create new podcaster page' do
    visit '/podcasters'
    click_link 'Create a new Podcaster'

    expect(current_path).to eq('/podcasters/new')
  end

  it 'links to the podcaster edit page' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's Podcast",years_active: 2, active: true)
    visit '/podcasters'
    click_link 'Edit'

    expect(current_path).to eq("/podcasters/#{podcaster_1.id}/edit")
  
  end
end
