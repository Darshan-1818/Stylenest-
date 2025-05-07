json.extract! store, :id, :name, :brand, :price, :size, :description, :created_at, :updated_at
json.url store_url(store, format: :json)
