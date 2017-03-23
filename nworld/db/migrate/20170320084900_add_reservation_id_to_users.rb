class AddReservationIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reservation_id, :integer
  end
end
