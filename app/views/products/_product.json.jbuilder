json.extract! product, :id, :quantity, :book_id, :store_id, :created_at, :updated_at
json.url product_url(product, format: :json)
