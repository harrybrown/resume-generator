json.array!(@miscellaneous) do |miscellaneou|
  json.extract! miscellaneou, :id, :name, :description
  json.url miscellaneou_url(miscellaneou, format: :json)
end
