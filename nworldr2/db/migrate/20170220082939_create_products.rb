class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :srp
      t.decimal :retail_price
      t.decimal :distributor_price
      t.integer :num_stock
      t.integer :reserved
      t.string :img

      t.timestamps null: false
    end
  end
end
