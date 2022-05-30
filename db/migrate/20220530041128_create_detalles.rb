class CreateDetalles < ActiveRecord::Migration[5.2]
  def change
    create_table :detalles do |t|
      t.decimal :cantidad
      t.references :prestamo, foreign_key: true
      t.references :libro, foreign_key: true

      t.timestamps
    end
  end
end
