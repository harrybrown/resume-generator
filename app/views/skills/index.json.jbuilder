json.array!(@skills) do |skill|
  json.extract! skill, :id, :skill_name, :description, :resume_id
  json.url skill_url(skill, format: :json)
end
