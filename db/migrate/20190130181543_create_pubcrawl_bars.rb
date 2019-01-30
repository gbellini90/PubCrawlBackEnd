class CreatePubcrawlBars < ActiveRecord::Migration[5.2]
  def change
    create_table :pubcrawl_bars do |t|
      t.integer :pubcrawl_id
      t.integer :bar_id

      t.timestamps
    end
  end
end
