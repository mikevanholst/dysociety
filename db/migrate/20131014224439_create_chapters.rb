class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :title
      t.text :content
      t.boolean :free

      t.timestamps
    end
  end
end
