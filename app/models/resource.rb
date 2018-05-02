# == Schema Information
#
# Table name: resources
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  sprint_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Resource < ApplicationRecord
  belongs_to :sprint, optional: true
end
