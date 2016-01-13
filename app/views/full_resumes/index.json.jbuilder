json.array!(@full_resumes) do |full_resume|
  json.extract! full_resume, :id
  json.url full_resume_url(full_resume, format: :json)
end
