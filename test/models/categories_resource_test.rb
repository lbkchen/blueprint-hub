# == Schema Information
#
# Table name: categories_resources
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  resource_id :integer
#

require 'test_helper'

class CategoriesResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
