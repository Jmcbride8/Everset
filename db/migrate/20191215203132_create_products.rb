class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.timestamps
    end
    add_index :products, [:subscription_id,:product_id]
    add_index :products
  end
end