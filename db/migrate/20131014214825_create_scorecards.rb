class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|
      t.integer :total
      t.integer :chapters
      t.integer :companies
      t.integer :level
      t.integer :books
      t.integer :shares
      t.integer :sash_id
      t.integer :donations
      t.belongs_to :user

      t.timestamps
    end
  end
end
