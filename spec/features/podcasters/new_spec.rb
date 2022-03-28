require 'rails_helper'

RSpec.describe 'the podcaster creation' do
  it 'can create a new Podcaster' do
    visit '/podcasters'
    click_link 'Create a new Podcaster'
    expect(current_path).to eq('/podcasters/new')
    # visit '/podcasters/new'

    fill_in 'Name', with: 'Jocko Willink'
    fill_in('Expertise', with: 'Leadership, History, Current Events, Physical Fitness')
    fill_in('Podcast names', with: 'Jocko Podcast')
    fill_in('Number of podcasts', with: 1)
    check('Active')
    click_button('Create Podcaster')
    # form.check_box:true(or false) for true/false attributes
    expect(current_path).to eq("/podcasters")
    expect(page).to have_content("Jocko Willink")

  end
  it 'links to the new page from the podcasters index' do
    podcaster_1 = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency   Medicine,Education", podcast_names: "Emergency Medicine Cases, Educator's   Podcast",number_of_podcasts: 2, active: true)

    podcaster_2 = Podcaster.create!(name: "Dr. Scott Weingart", expertise: "EmergencyMedicine,  Critical Care, Academic Productivity, Philosophy", podcast_names: "EMCritPodcast, On Deeper   Reflection", number_of_podcasts: 2, active: true)

    podcaster_3 = Podcaster.create!(name: "Sam Harris", podcast_names: "Making Sense",expertise:  "Neuroscience, Philosophy, Current Events", active: true, number_of_podcasts: 1)
    visit '/podcasters'

    click_link("Create a new Podcaster")
    expect(current_path).to eq('/podcasters/new')
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

end
