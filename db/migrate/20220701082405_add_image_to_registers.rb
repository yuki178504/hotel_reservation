class AddImageToRegisters < ActiveRecord::Migration[6.1]
  def change
    add_column :registers, :image, :string
  end
end
