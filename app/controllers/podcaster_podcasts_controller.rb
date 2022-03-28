class PodcasterPodcastsController < ApplicationController

  def index
    # require 'pry'; binding.pry
    @podcaster = Podcaster.find(params[:podcaster_id])
    @podcasts = @podcaster.podcasts
  end
end
