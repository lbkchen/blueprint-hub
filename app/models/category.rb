# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  priority   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_and_belongs_to_many :resources
  
  enum priority: {
    low: 0,
    medium: 1,
    high: 2,
    critical: 3,
  }
end
