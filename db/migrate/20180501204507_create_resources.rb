class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.references :sprint, foreign_key: true

      t.timestamps
    end
  end
end
