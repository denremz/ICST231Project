class AddUserNameToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :username, :string
  end
end
