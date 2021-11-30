class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    # drop_table :orders
    create_table :orders do |t|
      t.integer :name, null: false
      t.string :phone, null:false
      t.integer :address, null:false
      t.decimal :user_id, null:false
      t.timestamps
    end
  end
end
