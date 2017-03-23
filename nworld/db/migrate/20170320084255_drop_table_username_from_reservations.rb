class DropTableUsernameFromReservations < ActiveRecord::Migration
 def change
    remove_column :reservations, :username, :string
  end
end
