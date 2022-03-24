require 'rails_helper'

describe Podcast, type: :model do
  describe "validations" do
      # before :each do
      #   podcast = Podcast.create!(podcaster_name: "Dr. Anton Helman", title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: false)
        it { should validate_presence_of(:podcaster_name)}
        it { should validate_presence_of(:title) }
        it { should validate_presence_of(:topic) }
        it { should validate_presence_of(:length_in_minutes) }
        it { should validate_presence_of(:favorites) }

      # end
  end
  describe "relationships" do
    it { should belong_to(:podcaster) }
  end
end
