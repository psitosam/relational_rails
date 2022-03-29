class PodcastsController < ApplicationController
  # before_action :get_podcaster

  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  # def new
  #   @podcast = Podcast.new
  # end

  # private
  #     def get_podcaster
  #         # require 'pry'; binding.pry
  #       @podcaster = Podcaster.find(params[:podcaster_id])
  #     end
  # def create
  #   Podcast.create(podcast_params)
  #   redirect_to "/podcasters/#{@podcaster.id}/podcasts"
  # end


end
