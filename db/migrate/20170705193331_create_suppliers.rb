class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
