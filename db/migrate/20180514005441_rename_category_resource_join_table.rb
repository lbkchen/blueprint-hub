class RenameCategoryResourceJoinTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :category_resources, :categories_resources
  end
end
