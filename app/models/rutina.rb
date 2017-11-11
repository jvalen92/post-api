class Rutina < ApplicationRecord

  # model association
  has_many :ejercicios, dependent: :destroy

  # validations
  validates_presence_of :nombre


end
