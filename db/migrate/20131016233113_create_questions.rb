class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :right
      t.string :wrong_1
      t.string :wrong_2
      t.string :wrong_3
      t.string :success
      t.string :failure
      t.belongs_to :quiz

      t.timestamps
    end
  end
end
