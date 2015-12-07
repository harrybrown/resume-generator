json.array!(@work_duties) do |work_duty|
  json.extract! work_duty, :id, :work_id, :task, :description
  json.url work_duty_url(work_duty, format: :json)
end
