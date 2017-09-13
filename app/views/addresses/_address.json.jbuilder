json.extract! address, :id, :status, :street, :city, :state, :zip, :full, :pin, :created_at, :updated_at
json.url address_url(address, format: :json)
