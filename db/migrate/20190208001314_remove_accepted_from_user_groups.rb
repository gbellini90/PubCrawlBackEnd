class RemoveAcceptedFromUserGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_groups, :accepted, :boolean
  end
end
