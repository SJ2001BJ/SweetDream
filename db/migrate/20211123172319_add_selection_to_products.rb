class AddSelectionToProducts < ActiveRecord::Migration[5.2]
  def change
     add_column :products, :selection, :string
  end
end
