class Podcaster < ApplicationRecord
  has_many :podcasts
  validates_presence_of :name
  validates_presence_of :podcast_names
  validates_presence_of :expertise
  validates_presence_of :active
  validates_presence_of:number_of_podcasts
  def index
  end
end
