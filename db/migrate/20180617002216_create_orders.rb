class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quantity, default: 0
      t.decimal :total, precision: 10, scale: 2, default: 0.0
      
      t.timestamps null: false
    end
  end
end
