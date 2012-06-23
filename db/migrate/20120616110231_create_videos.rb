class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video_url
      t.string :alt_title
      t.integer :timeline_event_id

      t.timestamps
    end
  end
end
