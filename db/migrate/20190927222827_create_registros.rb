class CreateRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :registros do |t|
      t.string :nombre
      t.string :contraseña
      t.string :confirmarcontraseña
      t.string :email

      t.timestamps
    end
  end
end
