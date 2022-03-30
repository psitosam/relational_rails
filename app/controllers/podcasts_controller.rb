class PodcastsController < ApplicationController
  # before_action :get_podcaster

  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  def edit
    @podcast = Podcast.find(params[:id])
  end

  def update
    @podcast = Podcast.find(params[:id])
    @podcast.update(podcast_params)
    redirect_to "/podcasts/#{@podcast.id}"
  end

    private
        def podcast_params
          params.require(:podcast).permit(:title, :topic, :length_in_minutes, :favorites)
        end


end
