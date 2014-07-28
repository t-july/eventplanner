json.array!(@events) do |event|
  json.extract! event, :id, :event_title, :event_text
  json.url event_url(event, format: :json)
end
