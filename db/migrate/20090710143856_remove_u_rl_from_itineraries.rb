class RemoveURlFromItineraries < ActiveRecord::Migration
  def self.up
    remove_column :itineraries, :url
  end

  def self.down
    add_column :itineraries, :url, :string
  end
end

