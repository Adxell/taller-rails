class CreateMulta < ActiveRecord::Migration[5.2]
  def change
    create_table :multa do |t|
      t.decimal :valor
      t.date :fecha
      t.string :estado
      t.references :prestamo, foreign_key: true

      t.timestamps
    end
  end
end
