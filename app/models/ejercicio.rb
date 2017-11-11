class Ejercicio < ApplicationRecord
  belongs_to :rutina


  # validations
  validates_presence_of :nombre , :musculo
end

