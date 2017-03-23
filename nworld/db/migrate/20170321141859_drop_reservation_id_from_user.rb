class DropReservationIdFromUser < ActiveRecord::Migration
  def change
  
    remove_column :users, :reservation_id, :integer

  end
end
