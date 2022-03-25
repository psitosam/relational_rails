class PodcastersController < ApplicationController
  def index
    @podcasters = Podcaster.all
  end

  def show
    @podcaster = Podcaster.find(params[:id])
  end

  def parent_children_index
    @podcaster = Podcaster.find(params[:id])
    @podcaster.podcasts 
  end

end
