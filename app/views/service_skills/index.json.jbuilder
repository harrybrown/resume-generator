json.array!(@service_skills) do |service_skill|
  json.extract! service_skill, :id
  json.url service_skill_url(service_skill, format: :json)
end
