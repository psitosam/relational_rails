require 'rails_helper'

RSpec.describe "the podcasts show page" do
  it "visitor to the podcasts/:id can see the podcast with that id including the podcast's attributes" do
    helman = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)
    podcast_1 = helman.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    visit "/podcasts/#{podcast_1.id}"
    save_and_open_page

    expect(page).to have_content(podcast_1.podcaster_name)
    expect(page).to have_content(podcast_1.title)
    expect(page).to have_content(podcast_1.topic)
    expect(page).to have_content(podcast_1.length_in_minutes)
    expect(page).to have_content(podcast_1.favorites)
  end
end
