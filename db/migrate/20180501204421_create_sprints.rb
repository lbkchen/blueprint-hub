class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.date :start
      t.date :end
      t.string :name

      t.timestamps
    end
  end
end
