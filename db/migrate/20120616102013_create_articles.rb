class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :summary
      t.text :body
      t.integer :timeline_event_id

      t.timestamps
    end
  end
end
