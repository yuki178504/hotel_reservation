class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.string :name
      t.string :introduction
      t.integer :price
      t.string :address
      t.string :avatar_path
      t.date :starte_date
      t.date :end_date
      t.integer :number_people

      t.timestamps
    end
  end
end
