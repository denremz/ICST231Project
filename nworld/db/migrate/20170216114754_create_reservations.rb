class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :product
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
