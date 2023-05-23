class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :position
      t.decimal :wage

      t.timestamps
    end
  end
end
