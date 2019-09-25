class CreateProps < ActiveRecord::Migration[6.0]
  def change
    create_table :props do |t|
      t.float :pressure
      t.float :temperature
      t.float :zfactor
      t.float :bg
      t.float :viscosity
      t.references :gas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
