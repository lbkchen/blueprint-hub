# == Schema Information
#
# Table name: sprints
#
#  id         :integer          not null, primary key
#  start      :date
#  end        :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sprint < ApplicationRecord
  validates :name, presence: true
  validates :start, presence: true
  validates :end, presence: true

  has_many :resources
end
