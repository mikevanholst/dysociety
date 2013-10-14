class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :teaser
      t.string :embed_url
      t.string :file_location
      t.string :source
      t.boolean :published

      t.timestamps
    end
  end
end
