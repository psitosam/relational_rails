require 'rails_helper'

describe Podcast, type: :model do
  describe "validations" do
        it { should validate_presence_of(:podcaster_name)}
        it { should validate_presence_of(:title) }
        it { should validate_presence_of(:topic) }
        it { should validate_presence_of(:length_in_minutes) }
        it { should allow_value(true).for(:favorites) }
        it { should allow_value(false).for(:favorites) }
        it { should_not allow_value(nil).for(:favorites) }
  end
  describe "relationships" do
    it { should belong_to(:podcaster) }
  end
end
