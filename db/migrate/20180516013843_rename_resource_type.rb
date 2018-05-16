class RenameResourceType < ActiveRecord::Migration[5.1]
  def change
    rename_column :resources, :type, :doctype
  end
end
