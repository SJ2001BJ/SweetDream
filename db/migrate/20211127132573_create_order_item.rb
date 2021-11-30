class CreateOrderItem < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id, null: false
      t.string :title, null:false
      t.integer :count, null:false
      t.decimal :price, null:false
      t.timestamps
    end
  end
end
