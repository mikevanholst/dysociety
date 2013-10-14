class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.string :kind
      t.string :icon
      t.integer :score
      t.boolean :earned

      t.timestamps
    end
  end
end
