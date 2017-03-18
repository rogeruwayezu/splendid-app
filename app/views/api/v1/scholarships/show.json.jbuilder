json.id @scholarship.id
json.questions @scholarship.questions.each do |question|
  json.title question.title
end 