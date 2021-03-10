json.extract! ressource, :id, :title, :description, :mini_description, :link, :link2, :author_id, :created_at, :updated_at
json.url ressource_url(ressource, format: :json)
