class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :url
      t.integer :article_id

      t.timestamps
    end
  end
end
