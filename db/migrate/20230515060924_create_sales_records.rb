class CreateSalesRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_records do |t|
      t.date :date
      t.string :product_name
      t.integer :product_id
      t.float :price
      t.float :revenue

      t.timestamps
    end
  end
end
