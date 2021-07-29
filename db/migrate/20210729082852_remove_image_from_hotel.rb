class RemoveImageFromHotel < ActiveRecord::Migration[6.1]
  def change
    remove_column :hotels, :image, :string
  end
end
