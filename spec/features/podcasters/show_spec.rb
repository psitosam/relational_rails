require 'rails_helper'

RSpec.describe 'the podcasters show page' do
  it "visitor to podcasters/:id sees the podcaster with that id including the podcaster's attributes" do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)

    visit "/podcasters/#{podcaster_1.id}"

    expect(page).to have_content("Name : #{podcaster_1.name}")
    expect(page).to have_content(podcaster_1.expertise)
    expect(page).to have_content(podcaster_1.podcast_names)
    expect(page).to have_content(podcaster_1.number_of_children)
    expect(page).to have_content(podcaster_1.active)

    expect(page).to have_link("All Podcasts By #{podcaster_1.name}")
  end

  it 'links to the all podcasters page' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)
    visit "/podcasters/#{podcaster_1.id}"

    click_link 'All Podcasters'
    expect(current_path).to eq('/podcasters')
  end

  it 'links to the all podcasts page' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)
    visit "/podcasters/#{podcaster_1.id}"

    click_link 'All Podcasts'
    expect(current_path).to eq('/podcasts')
  end

  it 'links to that podcasters all podcasts page' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)
    visit "/podcasters/#{podcaster_1.id}"
    save_and_open_page

    click_link "All Podcasts By #{podcaster_1.name}"
    expect(current_path).to eq("/podcasters/#{podcaster_1.id}/podcasts")
  end
end
