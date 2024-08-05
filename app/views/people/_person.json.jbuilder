json.extract! person, :id, :title, :description, :avatar, :created_at, :updated_at
json.url person_url(person, format: :json)
json.avatar url_for(person.avatar)
