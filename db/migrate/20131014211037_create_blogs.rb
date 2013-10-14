class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :media
      t.string :author
      t.datetime :posted_on
      t.text :teaser

      t.timestamps
    end
  end
end
