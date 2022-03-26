require 'rails_helper'

RSpec.describe 'the podcasts index page' do
  it "visitor sees each podcast in the system including each podcast's attributes" do
    helman = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, number_of_podcasts: 2)

    harris = Podcaster.create!(name: "Sam Harris", podcast_names: "Making Sense", expertise: "Neuroscience, Philosophy, Current Events", active: true, number_of_podcasts: 1)

    weingart = Podcaster.create!(name: "Dr. Scott Weingart", podcast_names: "EMCrit Podcast, On Deeper Reflection", expertise: "Emergency Medicine, Critical Care, Academic Productivity, Philosophy", active: true, number_of_podcasts: 2)

    podcast_1 = helman.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

    podcast_2 = helman.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "EM Quick Hits 36: Surviving Sepsis", length_in_minutes: 62, favorites: true)

    podcast_3 = helman.podcasts.create!(podcaster_name: "Dr. Anton Helman", title:"Educator's Podcast", topic: "Podcasting In MedEd", length_in_minutes: 17, favorites: true)

    podcast_4 = harris.podcasts.create!(podcaster_name: "Sam Harris", title: "Making Sense", topic: "The Russian War in Ukraine", length_in_minutes: 38, favorites: true)

    podcast_5 = harris.podcasts.create!(podcaster_name: "Sam Harris", title: "Making Sense", topic: "Recipes For Future Plagues", length_in_minutes: 118, favorites: false)

    podcast_6 = harris.podcasts.create!(podcaster_name: "Sam Harris", title: "Making Sense", topic: "The Future of American Democracy", length_in_minutes: 141, favorites: true)

    podcast_7 = weingart.podcasts.create!(podcaster_name: "Dr. Scott Weingart", title: "EMCrit Podcast", topic: "Ep. 319: Safe and Smart Reversal of Anticoagulation Agents in 2022", length_in_minutes: 9, favorites: false)

    podcast_8 = weingart.podcasts.create!(podcaster_name: "Dr. Scott Weingart", title: "On Deeper Reflection", topic: "Email Tactics", length_in_minutes: 37, favorites: false)

    podcast_9 = weingart.podcasts.create!(podcaster_name: "Dr. Scott Weingart", title: "EMCrit Podcast", topic: "Surviving Sepsis Update 2022", length_in_minutes: 37, favorites: false)

    visit "/podcasts"
    
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
    expect(page).to have_content(podcast_4.podcaster_name)
    expect(page).to have_content(podcast_4.title)
    expect(page).to have_content(podcast_4.topic)
    expect(page).to have_content(podcast_4.length_in_minutes)
    expect(page).to have_content(podcast_4.favorites)
    expect(page).to have_content(podcast_5.podcaster_name)
    expect(page).to have_content(podcast_5.title)
    expect(page).to have_content(podcast_5.topic)
    expect(page).to have_content(podcast_5.length_in_minutes)
    expect(page).to have_content(podcast_5.favorites)
    expect(page).to have_content(podcast_6.podcaster_name)
    expect(page).to have_content(podcast_6.title)
    expect(page).to have_content(podcast_6.topic)
    expect(page).to have_content(podcast_6.length_in_minutes)
    expect(page).to have_content(podcast_6.favorites)
    expect(page).to have_content(podcast_7.podcaster_name)
    expect(page).to have_content(podcast_7.title)
    expect(page).to have_content(podcast_7.topic)
    expect(page).to have_content(podcast_7.length_in_minutes)
    expect(page).to have_content(podcast_7.favorites)
    expect(page).to have_content(podcast_8.podcaster_name)
    expect(page).to have_content(podcast_8.title)
    expect(page).to have_content(podcast_8.topic)
    expect(page).to have_content(podcast_8.length_in_minutes)
    expect(page).to have_content(podcast_8.favorites)
    expect(page).to have_content(podcast_9.podcaster_name)
    expect(page).to have_content(podcast_9.title)
    expect(page).to have_content(podcast_9.topic)
    expect(page).to have_content(podcast_9.length_in_minutes)
    expect(page).to have_content(podcast_9.favorites)
    expect(page).to have_link("All Podcasters")

  end
end
