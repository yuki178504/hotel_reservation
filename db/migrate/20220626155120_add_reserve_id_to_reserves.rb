class AddReserveIdToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :register_id, :integer
  end
end
