class PodcastersController < ApplicationController
  def index
    @podcasters = Podcaster.all
  end

  def show
    @podcaster = Podcaster.find(params[:id])
  end

end
