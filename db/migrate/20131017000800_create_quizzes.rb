class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :size
      t.integer :score
      t.string :success
      t.string :failure
      t.belongs_to :quiz

      t.timestamps
    end
  end
end
