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
#  doctype    :integer          default(0)
#

require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
