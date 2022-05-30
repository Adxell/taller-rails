class Detalle < ApplicationRecord
  belongs_to :prestamo
  belongs_to :libro
end
