class CreateOpeningHours < ActiveRecord::Migration
  def self.up
    create_table :opening_hours do |t|
      t.integer :bar_id
      t.integer :weekday
      t.time :open
      t.time :close

      t.timestamps
    end
  end

  def self.down
    drop_table :opening_hours
  end
end
