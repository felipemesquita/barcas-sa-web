class AddUrlToItineraries < ActiveRecord::Migration
  def self.up
    add_column :itineraries, :url, :string
  end

  def self.down
    remove_column :itineraries, :url
  end
end
