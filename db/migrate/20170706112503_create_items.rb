class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :supplier, foreign_key: true
      t.string :name
      t.string :product_code
      t.string :description
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
