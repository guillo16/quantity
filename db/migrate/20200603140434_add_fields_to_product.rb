class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :size, :integer
    add_column :products, :condition, :string
    add_column :products, :flavor, :string
  end
end
