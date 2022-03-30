require 'rails_helper'

describe Podcaster, type: :model do

  describe "validations" do
      it { should have_many(:podcasts)}
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:podcast_names) }
      it { should validate_presence_of(:expertise) }
      it { should allow_value(true).for(:active) }
      it { should allow_value(false).for(:active) }
      it { should_not allow_value(nil).for(:active) }
      it { should validate_presence_of(:years_active) }
  end
  describe "relationships" do
      it { should have_many(:podcasts)}
  end

end
