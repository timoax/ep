class CreatePings < ActiveRecord::Migration
  def self.up
    create_table :pings do |t|
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end

  def self.down
    drop_table :pings
  end
end
