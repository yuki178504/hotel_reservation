class RemoveReserveIdFromReserves < ActiveRecord::Migration[6.1]
  def change
    remove_column :reserves, :reserve_id, :integer
  end
end
