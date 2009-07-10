# == Schema Information
# Schema version: 20090710130211
#
# Table name: classifications
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Classification < ActiveRecord::Base
end
