json.array!(@resumes) do |resume|
  json.extract! resume, :id, :job_type, :objective, :user_id
  json.url resume_url(resume, format: :json)
end
