json.extract! product, :id, :name, :srp, :retail_price, :distributor_price, :num_stock, :reserved, :image, :created_at, :updated_at
json.url product_url(product, format: :json)