require 'rails_helper'

RSpec.describe "the podcasters/podcaster_id/podcasts page", type: :feature do
  it "visitor sees each podcast that is associated with that podcaster along with each podcast's attributes" do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)

    podcast_1 = podcaster_1.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    podcast_2 = podcaster_1.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "EM Quick Hits 36: Surviving Sepsis", length_in_minutes: 62, favorites: true)

    podcast_3 = podcaster_1.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Educator's Podcast", topic: "Podcasting In MedEd", length_in_minutes: 17, favorites: true)

    visit "/podcasters/#{podcaster_1.id}/podcasts"

     # save_and_open_page

    expect(page).to have_content(podcast_1.podcaster_name)
    expect(page).to have_content(podcast_1.title)
    expect(page).to have_content(podcast_1.topic)
    expect(page).to have_content(podcast_1.length_in_minutes)
    expect(page).to have_content(podcast_1.favorites)
    expect(page).to have_content(podcast_2.podcaster_name)
    expect(page).to have_content(podcast_2.title)
    expect(page).to have_content(podcast_2.topic)
    expect(page).to have_content(podcast_2.length_in_minutes)
    expect(page).to have_content(podcast_2.favorites)
    expect(page).to have_content(podcast_3.podcaster_name)
    expect(page).to have_content(podcast_3.title)
    expect(page).to have_content(podcast_3.topic)
    expect(page).to have_content(podcast_3.length_in_minutes)
    expect(page).to have_content(podcast_3.favorites)
    expect(page).to have_link("All Podcasts")
    expect(page).to have_link("All Podcasters")


  end
end
