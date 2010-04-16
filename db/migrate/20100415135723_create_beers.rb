class CreateBeers < ActiveRecord::Migration
  def self.up
    create_table :beers do |t|
      t.integer :bar_id
      t.string :name
      t.integer :price
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :beers
  end
end
