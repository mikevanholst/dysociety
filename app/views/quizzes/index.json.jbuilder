json.array!(@quizzes) do |quiz|
  json.extract! quiz, :name, :size, :score, :success, :failure
  json.url quiz_url(quiz, format: :json)
end
