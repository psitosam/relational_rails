class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :podcaster_name
      t.string :title
      t.string :topic
      t.integer :length_in_minutes
      t.boolean :favorites
      t.references :podcaster, foreign_key: true

      t.timestamps
    end
  end
end
