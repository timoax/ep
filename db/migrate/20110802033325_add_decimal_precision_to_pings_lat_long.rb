class AddDecimalPrecisionToPingsLatLong < ActiveRecord::Migration
  def self.up
    change_column :pings, :lat, :decimal, :precision => 15, :scale => 10
    change_column :pings, :long, :decimal, :precision => 15, :scale => 10
  end

  def self.down
    # nothing to do here
  end
end
