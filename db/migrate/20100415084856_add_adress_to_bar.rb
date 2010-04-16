class AddAdressToBar < ActiveRecord::Migration
  def self.up
    add_column :bars, :street, :string
    add_column :bars, :city, :string
  end

  def self.down
    remove_column :bars, :street
    remove_column :bars, :city
  end
end
