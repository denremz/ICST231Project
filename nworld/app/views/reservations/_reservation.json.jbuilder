json.extract! reservation, :id, :name, :product, :product_id, :quantity, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)