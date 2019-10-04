class CreateUsuariosses < ActiveRecord::Migration[6.0]
  def change
    create_table :usuariosses do |t|
      t.string :nombre
      t.string :email
      t.string :contrasena

      t.timestamps
    end
  end
end
