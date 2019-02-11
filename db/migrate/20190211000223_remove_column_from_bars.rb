class RemoveColumnFromBars < ActiveRecord::Migration[5.2]
  def change
    remove_column :bars, :description, :string
  end
end
