class AddColumnsToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :latitude, :decimal
    add_column :bars, :longitude, :decimal
    add_column :bars, :price, :string
    add_column :bars, :pic, :string
  end
end
