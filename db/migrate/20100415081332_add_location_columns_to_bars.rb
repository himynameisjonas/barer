class AddLocationColumnsToBars < ActiveRecord::Migration
  def self.up
    
    add_column :bars, :lat, :decimal, {:precision => 15, :scale => 10 }
    add_column :bars, :lng, :decimal, {:precision => 15, :scale => 10 }
    
  end

  def self.down
    remove_column :bars, :lat
    remove_column :bars, :lng    
  end
end
