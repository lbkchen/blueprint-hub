# == Schema Information
#
# Table name: objectives
#
#  id          :integer          not null, primary key
#  description :string
#  completed   :boolean
#  sprint_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Objective < ApplicationRecord
  belongs_to :sprint
end
