class RemoveNameFromPubcrawls < ActiveRecord::Migration[5.2]
  def change
    remove_column :pubcrawls, :name, :string
  end
end
