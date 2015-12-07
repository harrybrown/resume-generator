json.array!(@job_duties) do |job_duty|
  json.extract! job_duty, :id
  json.url job_duty_url(job_duty, format: :json)
end
