require 'rails_helper'

describe Podcast, type: :model do
  describe "relationships" do
    it { should belong_to(:podcaster) }
  end
end 
