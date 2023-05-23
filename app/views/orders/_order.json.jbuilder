json.extract! order, :id, :customer_name_id, :customer_email_id, :address, :total, :paid, :food_name_id, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)
