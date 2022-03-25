require 'rails_helper'

RSpec.describe "the podcasters/podcaster_id/podcasts page", type: :feature do
  it "visitor sees each podcast that is associated with that podcaster along with each podcast's attributes" do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)

    podcast_1 = podcaster_1.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    podcast_2 = podcaster_1.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "EM Quick Hits 36: Surviving Sepsis", length_in_minutes: 62, favorites: true)

    podcast_3 = podcaster_1.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Educator's Podcast", topic: "Podcasting In MedEd", length_in_minutes: 17, favorites: true)

    visit "/podcasters/#{podcaster_1.id}/podcasts"

    save_and_open_page
  end
end
