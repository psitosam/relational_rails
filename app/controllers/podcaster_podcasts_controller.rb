class PodcasterPodcastsController < ApplicationController
  before_action :get_podcaster

  def index

    @podcasts = @podcaster.podcasts
  end

  def new

    # @podcast = @podcaster.podcasts.build
  end
  #
  def create
# require 'pry'; binding.pry
    @podcaster.podcasts.build(podcast_params)
    @podcaster.save

    redirect_to "/podcasters/#{@podcaster.id}/podcasts"
  end
  #
  private
      def get_podcaster
          # require 'pry'; binding.pry
        @podcaster = Podcaster.find(params[:podcaster_id])
      end

      def podcast_params
        params.require(:podcast).permit(:title, :topic, :length_in_minutes, :favorites)
      end

end
