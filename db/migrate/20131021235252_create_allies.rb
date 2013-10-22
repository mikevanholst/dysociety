class CreateAllies < ActiveRecord::Migration
  def change
    create_table :allies do |t|
      t.string :name
      t.string :url
      t.string :logo
      t.string :description

      t.timestamps
    end
  end
end
