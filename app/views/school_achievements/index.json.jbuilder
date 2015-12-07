json.array!(@school_achievements) do |school_achievement|
  json.extract! school_achievement, :id, :school_id, :achievement, :description
  json.url school_achievement_url(school_achievement, format: :json)
end
