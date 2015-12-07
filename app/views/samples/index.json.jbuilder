json.array!(@samples) do |sample|
  json.extract! sample, :id, :site_link, :my_contribution, :boxed_logo, :company_working_for, :project_description, :challenges, :screenshot, :mobile_screen_shot
  json.url sample_url(sample, format: :json)
end
