class AddDescriptionToSprint < ActiveRecord::Migration[5.1]
  def change
    add_column :sprints, :description, :text
  end
end
