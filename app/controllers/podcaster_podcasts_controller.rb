class PodcasterPodcastsController < ApplicationController
  before_action :get_podcaster

  def index
    if params[:sort] == 'alpha'
      @podcasts = @podcaster.podcasts.order(:topic)
    else
      @podcasts = @podcaster.podcasts
    end
  end

  def new

  end
  #
  def create
    @podcaster.podcasts.build(podcast_params)
    @podcaster.save

    redirect_to "/podcasters/#{@podcaster.id}/podcasts"
  end
  #
  private
      def get_podcaster
        @podcaster = Podcaster.find(params[:podcaster_id])
      end

      def podcast_params
        params.require(:podcast).permit(:title, :topic, :length_in_minutes, :favorites)
      end

end
