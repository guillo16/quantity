class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :stock
      t.integer :price

      t.timestamps
    end
  end
end
