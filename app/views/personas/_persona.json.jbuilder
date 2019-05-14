json.extract! persona, :id, :name, :details, :url, :created_at, :updated_at
json.url persona_url(persona, format: :json)
