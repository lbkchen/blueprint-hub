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

class CategoriesResource < ApplicationRecord
  belongs_to :category
  belongs_to :resource
end
