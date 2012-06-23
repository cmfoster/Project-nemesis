class CreateTimelineEvents < ActiveRecord::Migration
  def change
    create_table :timeline_events do |t|
      t.string :title
      t.date :event_date

      t.timestamps
    end
  end
end
