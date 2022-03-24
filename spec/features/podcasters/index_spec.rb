require 'rails_helper'

RSpec.describe 'the podcasters index page' do
  it 'displays a list of all podcasters' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine, Education", podcast_names: "Emergency Medicine Cases, Educator's Podcast", number_of_podcasts: 2, active: true)
    podcaster_2 = Podcaster.create!(name: "Dr. Scott Weingart", expertise: "Emergency Medicine, Critical Care, Academic Productivity, Philosophy", podcast_names: "EMCrit Podcast, On Deeper Reflection", number_of_podcasts: 2, active: true)

    podcaster_3 = Podcaster.create!(name: "Sam Harris", podcast_names: "Making Sense", expertise: "Neuroscience, Philosophy, Current Events", active: true, number_of_podcasts: 1)

    visit "/podcasters"
    save_and_open_page
    expect(page).to have_content(podcaster_1.name)
    expect(page).to have_content(podcaster_1.expertise)
    expect(page).to have_content(podcaster_2.name)
    expect(page).to have_content(podcaster_2.expertise)
    expect(page).to have_link("Back To Podcast Manager")
  end
end
