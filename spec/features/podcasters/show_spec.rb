require 'rails_helper'

RSpec.describe 'the podcasters show page' do
  it 'displays a list of all podcasters' do
    podcaster = Podcaster.create!(name: "Dr. Anton Helman", expertise: "Emergency Medicine", podcast_names: "Emergency Medicine Cases", number_of_podcasts: 1, active: true)
    visit "/podcasters"
  end
end
