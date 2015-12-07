json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :video_embed_code, :topic, :category, :description, :publish_date
  json.url tutorial_url(tutorial, format: :json)
end
