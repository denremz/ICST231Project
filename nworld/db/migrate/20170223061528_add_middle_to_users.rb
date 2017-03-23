class AddMiddleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :middle, :string
  end
end
