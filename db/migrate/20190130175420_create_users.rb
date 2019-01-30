class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :username
      t.text :bio
      t.string :pic

      t.timestamps
    end
  end
end
