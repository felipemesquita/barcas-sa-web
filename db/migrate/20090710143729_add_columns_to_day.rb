class AddColumnsToDay < ActiveRecord::Migration
  def self.up
    add_column :days, :itinerary_id, :integer
    add_column :days, :url, :string
  end

  def self.down
    remove_column :days, :itinerary_id
    remove_column :days, :url
  end
end

