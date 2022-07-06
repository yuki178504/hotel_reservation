class AddUserIdToRegisters < ActiveRecord::Migration[6.1]
  def change
    add_column :registers, :user_id, :integer
  end
end
