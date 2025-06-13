json.extract! adminuser, :id, :name, :password_digest, :created_at, :updated_at
json.url adminuser_url(adminuser, format: :json)
