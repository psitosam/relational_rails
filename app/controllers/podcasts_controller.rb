class PodcastsController < ApplicationController
  # before_action :get_podcaster

  def index
    @podcasts = Podcast.all.select { |podcast| podcast.favorites == true }
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

  # def only_favorites
  #   Podcast.all.select { |podcast| podcast.favorites == true }
  # end

    private
        def podcast_params
          params.require(:podcast).permit(:title, :topic, :length_in_minutes, :favorites)
        end


end
