class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.float :pressure
      t.float :temperature
      t.float :zfactor
      t.float :formationvolumefactor
      t.float :viscosity
      t.references :gas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
