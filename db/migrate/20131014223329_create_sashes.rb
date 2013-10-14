class CreateSashes < ActiveRecord::Migration
  def change
    create_table :sashes do |t|
      t.belongs_to :user
      t.belongs_to :badge


      t.timestamps
    end
  end
end
