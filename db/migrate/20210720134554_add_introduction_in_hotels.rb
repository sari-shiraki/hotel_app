class AddIntroductionInHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :introduction, :text
  end
end
