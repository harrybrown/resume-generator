json.array!(@contacts) do |contact|
  json.extract! contact, :id, :full_name, :address, :address2, :city, :state, :zip, :email, :phone
  json.url contact_url(contact, format: :json)
end
