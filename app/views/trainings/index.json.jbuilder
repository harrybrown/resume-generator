json.array!(@trainings) do |training|
  json.extract! training, :id, :school, :end_date, :course_of_study, :level_of_completion
  json.url training_url(training, format: :json)
end
