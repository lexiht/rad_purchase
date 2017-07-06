class CreateJoinTableOrderItemItem < ActiveRecord::Migration[5.1]
  def change
    create_join_table :order_items, :items do |t|
      t.index [:order_item_id, :item_id]
      t.index [:item_id, :order_item_id]
    end
  end
end
