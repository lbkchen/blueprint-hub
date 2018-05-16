class AddTypeToResources < ActiveRecord::Migration[5.1]
  def change
    add_column :resources, :type, :integer, default: 0
  end
end
