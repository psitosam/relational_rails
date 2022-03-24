require 'rails_helper'

describe Podcaster, type: :model do

  describe "validations" do
      it { should have_many(:podcasts)}
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:podcast_names) }
      it { should validate_presence_of(:expertise) }
      it { should validate_presence_of(:active) }
      it { should validate_presence_of(:number_of_podcasts) }
  end
  describe "relationships" do
      it { should have_many(:podcasts)}
  end
end
