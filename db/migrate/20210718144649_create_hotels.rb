class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :room_name
      t.string :adress
      t.integer :price

      t.timestamps
    end
  end
end
