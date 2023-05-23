class Order < ApplicationRecord
  belongs_to :customer_name
  belongs_to :customer_email
  belongs_to :food_name
end
