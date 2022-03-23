class PodcastersController < ApplicationController
  def index
    @podcasters = Podcaster.all 
  end

end
