json.extract! note, :id, :type, :content, :created_at, :updated_at
json.url note_url(note, format: :json)