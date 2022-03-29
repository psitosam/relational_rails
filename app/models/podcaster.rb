class Podcaster < ApplicationRecord
  has_many :podcasts
  validates_presence_of :name
  validates_presence_of :podcast_names
  validates_presence_of :expertise
  validates_inclusion_of :active, :in => [true, false]
  validates_presence_of:number_of_podcasts

  def self.sort_by_created_at
    Podcaster.order(created_at: :desc)
  end

  def readable_date
    self.created_at.strftime("%B %d %Y %I:%M %p %Z")
  end

  def number_of_children
    self.number_of_podcasts
  end

  # def new_podcast
  #   require 'pry'; binding.pry
  #   self.Podcast.new(podcast_params)
  # end


end
