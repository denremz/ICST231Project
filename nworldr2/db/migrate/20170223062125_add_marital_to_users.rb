class AddMaritalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marital, :string
  end
end
