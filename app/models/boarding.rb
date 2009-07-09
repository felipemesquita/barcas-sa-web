# == Schema Information
# Schema version: 20090709190333
#
# Table name: boardings
#
#  id         :integer         not null, primary key
#  day_id     :integer
#  schedule   :time
#  created_at :datetime
#  updated_at :datetime
#

class Boarding < ActiveRecord::Base
  belongs_to :day
end

