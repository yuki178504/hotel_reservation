class AddTotalToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :total, :integer
  end
end
