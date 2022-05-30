class CreateConsultasUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :consultas_usuarios do |t|

      t.timestamps
    end
  end
end
