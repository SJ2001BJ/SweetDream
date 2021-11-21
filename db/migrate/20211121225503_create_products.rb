class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description, null:false
      t.string :image_url, default: "https://iconbjjbelfast.com/wp-content/uploads/2017/04/default-image.jpg"
      t.decimal :price, precision: 8, scale:2

      t.timestamps
    end
  end
end
