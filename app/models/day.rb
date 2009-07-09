# == Schema Information
# Schema version: 20090709190333
#
# Table name: days
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Day < ActiveRecord::Base
  has_many :boardings
end

