class CreateCategoryResources < ActiveRecord::Migration[5.1]
  def change
    create_table :category_resources do |t|

      t.timestamps
    end
  end
end
