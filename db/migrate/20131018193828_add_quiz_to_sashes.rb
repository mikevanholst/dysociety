class AddQuizToSashes < ActiveRecord::Migration
  def change
    add_column :sashes, :quiz_id, :integer
  end
end
