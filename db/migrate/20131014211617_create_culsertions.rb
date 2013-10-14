class CreateCulsertions < ActiveRecord::Migration
  def change
    create_table :culsertions do |t|
      t.string :title
      t.text :content
      t.integer :tally

      t.timestamps
    end
  end
end
