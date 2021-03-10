json.extract! author, :id, :name, :last_name, :email, :description, :website, :slug, :created_at, :updated_at
json.url author_url(author, format: :json)
