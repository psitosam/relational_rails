class PodcastersController < ApplicationController
  def index
    @podcasters = Podcaster.sort_by_created_at
  end

  def show
    @podcaster = Podcaster.find(params[:id])
  end

#this one should be in the model :
  def parent_children_index
    @podcaster = Podcaster.find(params[:id])
    @podcaster.podcasts
  end

end
