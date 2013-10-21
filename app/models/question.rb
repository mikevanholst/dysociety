class Question < ActiveRecord::Base

  validates :text, :right, :wrong_1, :wrong_2, :wrong_3, :success, :failure, :quiz_id, presence: true
  belongs_to :quiz
  has_many :answers
  accepts_nested_attributes_for :answers


  def print_options_randomly(question)
   
    random_array = []

    option_array = [{right: question.right}, {wrong_1: question.wrong_1}, {wrong_2: question.wrong_2}, {wrong_3: question.wrong_3}]
    until option_array.empty? do
      choice = option_array.sample
      random_array << choice
      option_array-[choice]
    end
    return random_array
  end







end
