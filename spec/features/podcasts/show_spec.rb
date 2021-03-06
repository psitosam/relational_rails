require 'rails_helper'

RSpec.describe "the podcasts show page" do
  it "visitor to the podcasts/:id can see the podcast with that id including the podcast's attributes" do
    helman = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, years_active: 2)
    podcast_1 = helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    visit "/podcasts/#{podcast_1.id}"


    expect(page).to have_content(helman.name)
    expect(page).to have_content(podcast_1.title)
    expect(page).to have_content(podcast_1.topic)
    expect(page).to have_content(podcast_1.length_in_minutes)
    expect(page).to have_content(podcast_1.favorites)
    expect(page).to have_link("All Podcasts")
    expect(page).to have_link("All Podcasters")

  end

  it 'links to the podcast update page' do
    helman = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, years_active: 2)
    podcast_1 = helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    visit "/podcasts/#{podcast_1.id}"

    click_link("Update Podcast")

    expect(current_path).to eq("/podcasts/#{podcast_1.id}/edit")
  end
end
