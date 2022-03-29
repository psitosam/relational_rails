class DropPodcasterNameFromPodcasts < ActiveRecord::Migration[5.2]
  def change
    remove_column :podcasts, :podcaster_name
  end
end
