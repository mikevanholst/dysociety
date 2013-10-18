
class AddChapterIdToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :chapter_id, :integer
  end
end
