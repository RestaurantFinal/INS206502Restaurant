class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer_name, null: false, foreign_key: true
      t.references :customer_email, null: false, foreign_key: true
      t.text :address
      t.float :total
      t.string :paid
      t.references :food_name, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
