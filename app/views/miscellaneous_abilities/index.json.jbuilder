json.array!(@miscellaneous_abilities) do |miscellaneous_ability|
  json.extract! miscellaneous_ability, :id
  json.url miscellaneous_ability_url(miscellaneous_ability, format: :json)
end
