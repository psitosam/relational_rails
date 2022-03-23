require 'rails_helper'

describe Podcaster, type: :model do

  describe "validations" do
    before :each do
      podcaster1 = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases", expertise: "Emergency Medicine", active: true, number_of_podcasts: 1)
      it { should have_many(:podcasts)}
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:podcast_names) }
      it { should validate_presence_of(:expertise) }
      it { should validate_presence_of(:active) }
      it { should validate_presence_of(:number_of_podcasts) }
    end 
  end
end
