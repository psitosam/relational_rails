class Podcast < ApplicationRecord
  belongs_to :podcaster
  validates_presence_of :title
  validates_presence_of :topic
  validates_presence_of :length_in_minutes
  validates_inclusion_of :favorites, :in => [true, false]

  def index
  end
end
