class CreateFormularios < ActiveRecord::Migration[6.0]
  def change
    create_table :formularios do |t|
      t.[''] :Nombre
      t.[''] :password
      t.[''] :confirmPassword
      t.[''] :email

      t.timestamps
    end
  end
end
