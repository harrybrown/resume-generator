json.array!(@works) do |work|
  json.extract! work, :id, :title, :company, :city, :state, :start_date, :end_date
  json.url work_url(work, format: :json)
end
