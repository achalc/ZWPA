json.array!(@notes) do |note|
  json.extract! note, :id, :request_id, :photo, :description
  json.url note_url(note, format: :json)
end
