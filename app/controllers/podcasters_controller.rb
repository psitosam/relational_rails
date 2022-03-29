class PodcastersController < ApplicationController
  def index
    @podcasters = Podcaster.sort_by_created_at
  end

  def new
  end

  def create
    Podcaster.create(podcaster_params)
    redirect_to '/podcasters'
  end

  def show
    @podcaster = Podcaster.find(params[:id])
  end

  def edit
    @podcaster = Podcaster.find(params[:id])
  end

  def update
    @podcaster = Podcaster.find(params[:id])
    @podcaster.update(podcaster_params)
    redirect_to "/podcasters/#{@podcaster.id}"
  end

  def destroy
    podcaster = Podcaster.find(params[:id])
    podcaster.destroy
    redirect_to '/podcasters'
  end


  private
    def podcaster_params
      params.require(:podcaster).permit(:name, :podcast_names, :expertise, :number_of_podcasts, :active)
      #{ name: params[:name], age: params[:age].to_i }
    end
end
