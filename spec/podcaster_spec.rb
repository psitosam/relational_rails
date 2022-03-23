require 'rails_helper'

describe Podcaster, type: :model do
  describe "validations" do
    it { should have_many(:podcasts)}
  end
end
