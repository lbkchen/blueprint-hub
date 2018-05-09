class CreateObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :objectives do |t|
      t.string :description
      t.boolean :completed
      t.references :sprint, foreign_key: true

      t.timestamps
    end
  end
end
