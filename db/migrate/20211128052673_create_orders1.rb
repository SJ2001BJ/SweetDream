class CreateOrders1 < ActiveRecord::Migration[5.2]
  def change
    drop_table :orders
    create_table :orders do |t|
      t.string :name, null: false
      t.string :phone, null:false
      t.string :address, null:false
      t.integer :user_id, null:false
      t.timestamps
    end
  end
end
