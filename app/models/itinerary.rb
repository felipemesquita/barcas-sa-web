# == Schema Information
# Schema version: 20090710143856
#
# Table name: itineraries
#
#  id                :integer         not null, primary key
#  description       :string(255)
#  classification_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Itinerary < ActiveRecord::Base
  belongs_to :classification
  has_many :days
end

