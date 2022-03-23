class CreatePodcasters < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasters do |t|
      t.string :name
      t.string :expertise
      t.string :podcast_names
      t.integer :number_of_podcasts
      t.boolean :active

      t.timestamps
    end
  end
end
