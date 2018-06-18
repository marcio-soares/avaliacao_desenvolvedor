class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :provider, index: true, foreign_key: true
      t.string :description
      t.decimal :price, precision: 10, scale: 2, default: 0.0

      t.timestamps null: false
    end
  end
end
