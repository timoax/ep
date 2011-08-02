class AddToPingsModel < ActiveRecord::Migration
  def self.up
    add_column :pings, :device, :string
    add_column :pings, :tstamp, :string
  end

  def self.down
    remove_column :pings, :device
    remove_column :pings, :tstamp
  end
end
