json.extract! client, :id, :name, :email, :max_seat, :phone_number, :created_at, :updated_at
json.url client_url(client, format: :json)
