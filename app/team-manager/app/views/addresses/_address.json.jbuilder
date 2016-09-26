json.extract! address, :id, :addr1, :addr2, :city, :state, :country, :zip, :address_type, :created_at, :updated_at
json.url address_url(address, format: :json)