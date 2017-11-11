class CreateEjercicios < ActiveRecord::Migration[5.1]
  def change
    create_table :ejercicios do |t|
      t.string :nombre
      t.string :musculo
      t.string :gif
      t.string :repeticiones
      t.string :maquina
      t.references :rutina, foreign_key: true
      t.string :tiempo

      t.timestamps
    end
  end
end
