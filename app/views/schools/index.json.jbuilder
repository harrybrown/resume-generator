json.array!(@schools) do |school|
  json.extract! school, :id, :name, :city, :state, :completion_date, :field_of_study
  json.url school_url(school, format: :json)
end
