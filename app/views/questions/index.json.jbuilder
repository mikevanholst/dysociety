json.array!(@questions) do |question|
  json.extract! question, :text, :right, :wrong_1, :wrong_2, :wrong_3, :success, :failure
  json.url question_url(question, format: :json)
end
