class Podcaster < ApplicationRecord
  has_many :podcasts
  validates_presence_of :name
  validates_presence_of :podcast_names
  validates_presence_of :expertise
  validates_inclusion_of :active, :in => [true, false]
  validates_presence_of:number_of_podcasts

  def index
  end

  def show
    @podcaster = Podcaster.find(params[:id])
  end

end
