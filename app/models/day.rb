# == Schema Information
# Schema version: 20090710143729
#
# Table name: days
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  itinerary_id :integer
#  url          :string(255)
#

class Day < ActiveRecord::Base
  belongs_to :itinerary
  has_many :boardings
end

