class AddKeysToCategoryResources < ActiveRecord::Migration[5.1]
  def change
    add_reference :category_resources, :category, index: true
    add_reference :category_resources, :resource, index: true
  end
end
