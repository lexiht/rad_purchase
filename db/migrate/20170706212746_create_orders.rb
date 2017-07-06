class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :value
      t.integer :order_number
      t.string :reference

      t.timestamps
    end
  end
end
