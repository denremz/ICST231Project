class DropUserIdFromReservation < ActiveRecord::Migration
  def change
  
    remove_column :reservations, :user_id, :integer

  end
end
