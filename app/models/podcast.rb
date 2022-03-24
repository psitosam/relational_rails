class Podcast < ApplicationRecord
  belongs_to :podcaster
  validates_presence_of :podcaster_name
  validates_presence_of :title
  validates_presence_of :topic
  validates_presence_of :length_in_minutes
  validates_presence_of :favorites

end
