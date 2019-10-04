class CreateKineFichas < ActiveRecord::Migration[6.0]
  def change
    create_table :kine_fichas do |t|
      t.integer :id_ficha_kine
      t.integer :id_ficha
      t.string :riesgo
      t.string :nro_sesion
      t.integer :id_especialista
      t.string :ergo_fecha_ing
      t.string :ergo_fecha_egr
      t.integer :ergo_vol_ing
      t.integer :ergo_vol_egr
      t.integer :ergo_voml_ing
      t.integer :ergo_voml_egr
      t.integer :ergo_fcmax_ing
      t.integer :ergo_fcmax_egr
      t.integer :ergo_pulso_ing
      t.integer :ergo_pulso_egr
      t.integer :ergo_ve_ing
      t.integer :ergo_ve_egr
      t.integer :ergo_mets_ing
      t.integer :ergo_mets_egr
      t.string :shu_fecha_ing
      t.string :shu_fecha_egr
      t.integer :shu_mts_ing
      t.integer :shu_mts_egr
      t.integer :shu_niv_ing
      t.integer :shu_niv_egr
      t.integer :shu_vol_ing
      t.integer :shu_vol_egr
      t.integer :shu_mets_ing
      t.integer :shu_mets_egr
      t.integer :shu_fcmax_ing
      t.integer :shu_fcmax_egr
      t.integer :shu_fcmt_ing
      t.integer :shu_fcmt_egr
      t.integer :shu_metsmax_ing
      t.integer :shu_metsmax_egr
      t.integer :id_reserva
      t.string :tipo_evaluacion

      t.timestamps
    end
  end
end
