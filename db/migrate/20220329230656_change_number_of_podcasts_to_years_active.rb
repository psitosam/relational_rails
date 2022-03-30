class ChangeNumberOfPodcastsToYearsActive < ActiveRecord::Migration[5.2]
  def change
    rename_column :podcasters, :number_of_podcasts, :years_active
  end
end
