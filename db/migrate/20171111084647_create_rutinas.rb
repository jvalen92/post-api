class CreateRutinas < ActiveRecord::Migration[5.1]
  def change
    create_table :rutinas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
