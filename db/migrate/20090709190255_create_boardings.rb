class CreateBoardings < ActiveRecord::Migration
  def self.up
    create_table :boardings do |t|
      t.integer :day_id
      t.time :schedule

      t.timestamps
    end
  end

  def self.down
    drop_table :boardings
  end
end
