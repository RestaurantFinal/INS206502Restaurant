json.extract! sales_record, :id, :date, :product_name, :product_id, :price, :revenue, :created_at, :updated_at
json.url sales_record_url(sales_record, format: :json)
