json.id @scholarship.id
json.questions @scholarship.questions.each do |question|
  question.title
end 