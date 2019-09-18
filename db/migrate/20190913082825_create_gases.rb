class CreateGases < ActiveRecord::Migration[6.0]
  def change
    create_table :gases do |t|
      t.string :name
      t.text :description
      t.float :specific_gravity
      t.float :h2s
      t.float :co2
      t.float :n2

      t.timestamps
    end
  end
end
