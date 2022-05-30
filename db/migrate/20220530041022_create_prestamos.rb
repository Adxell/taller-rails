class CreatePrestamos < ActiveRecord::Migration[5.2]
  def change
    create_table :prestamos do |t|
      t.date :fecha
      t.string :estado
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
