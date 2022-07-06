class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :introduction
      t.integer :price
      t.string :address
      t.string :avatar_path

      t.timestamps
    end
  end
end
