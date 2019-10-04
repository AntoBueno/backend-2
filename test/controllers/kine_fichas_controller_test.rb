require 'test_helper'

class KineFichasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kine_ficha = kine_fichas(:one)
  end

  test "should get index" do
    get kine_fichas_url, as: :json
    assert_response :success
  end

  test "should create kine_ficha" do
    assert_difference('KineFicha.count') do
      post kine_fichas_url, params: { kine_ficha: { ergo_fcmax_egr: @kine_ficha.ergo_fcmax_egr, ergo_fcmax_ing: @kine_ficha.ergo_fcmax_ing, ergo_fecha_egr: @kine_ficha.ergo_fecha_egr, ergo_fecha_ing: @kine_ficha.ergo_fecha_ing, ergo_mets_egr: @kine_ficha.ergo_mets_egr, ergo_mets_ing: @kine_ficha.ergo_mets_ing, ergo_pulso_egr: @kine_ficha.ergo_pulso_egr, ergo_pulso_ing: @kine_ficha.ergo_pulso_ing, ergo_ve_egr: @kine_ficha.ergo_ve_egr, ergo_ve_ing: @kine_ficha.ergo_ve_ing, ergo_vol_egr: @kine_ficha.ergo_vol_egr, ergo_vol_ing: @kine_ficha.ergo_vol_ing, ergo_voml_egr: @kine_ficha.ergo_voml_egr, ergo_voml_ing: @kine_ficha.ergo_voml_ing, id_especialista: @kine_ficha.id_especialista, id_ficha: @kine_ficha.id_ficha, id_ficha_kine: @kine_ficha.id_ficha_kine, id_reserva: @kine_ficha.id_reserva, nro_sesion: @kine_ficha.nro_sesion, riesgo: @kine_ficha.riesgo, shu_fcmax_egr: @kine_ficha.shu_fcmax_egr, shu_fcmax_ing: @kine_ficha.shu_fcmax_ing, shu_fcmt_egr: @kine_ficha.shu_fcmt_egr, shu_fcmt_ing: @kine_ficha.shu_fcmt_ing, shu_fecha_egr: @kine_ficha.shu_fecha_egr, shu_fecha_ing: @kine_ficha.shu_fecha_ing, shu_mets_egr: @kine_ficha.shu_mets_egr, shu_mets_ing: @kine_ficha.shu_mets_ing, shu_metsmax_egr: @kine_ficha.shu_metsmax_egr, shu_metsmax_ing: @kine_ficha.shu_metsmax_ing, shu_mts_egr: @kine_ficha.shu_mts_egr, shu_mts_ing: @kine_ficha.shu_mts_ing, shu_niv_egr: @kine_ficha.shu_niv_egr, shu_niv_ing: @kine_ficha.shu_niv_ing, shu_vol_egr: @kine_ficha.shu_vol_egr, shu_vol_ing: @kine_ficha.shu_vol_ing, tipo_evaluacion: @kine_ficha.tipo_evaluacion } }, as: :json
    end

    assert_response 201
  end

  test "should show kine_ficha" do
    get kine_ficha_url(@kine_ficha), as: :json
    assert_response :success
  end

  test "should update kine_ficha" do
    patch kine_ficha_url(@kine_ficha), params: { kine_ficha: { ergo_fcmax_egr: @kine_ficha.ergo_fcmax_egr, ergo_fcmax_ing: @kine_ficha.ergo_fcmax_ing, ergo_fecha_egr: @kine_ficha.ergo_fecha_egr, ergo_fecha_ing: @kine_ficha.ergo_fecha_ing, ergo_mets_egr: @kine_ficha.ergo_mets_egr, ergo_mets_ing: @kine_ficha.ergo_mets_ing, ergo_pulso_egr: @kine_ficha.ergo_pulso_egr, ergo_pulso_ing: @kine_ficha.ergo_pulso_ing, ergo_ve_egr: @kine_ficha.ergo_ve_egr, ergo_ve_ing: @kine_ficha.ergo_ve_ing, ergo_vol_egr: @kine_ficha.ergo_vol_egr, ergo_vol_ing: @kine_ficha.ergo_vol_ing, ergo_voml_egr: @kine_ficha.ergo_voml_egr, ergo_voml_ing: @kine_ficha.ergo_voml_ing, id_especialista: @kine_ficha.id_especialista, id_ficha: @kine_ficha.id_ficha, id_ficha_kine: @kine_ficha.id_ficha_kine, id_reserva: @kine_ficha.id_reserva, nro_sesion: @kine_ficha.nro_sesion, riesgo: @kine_ficha.riesgo, shu_fcmax_egr: @kine_ficha.shu_fcmax_egr, shu_fcmax_ing: @kine_ficha.shu_fcmax_ing, shu_fcmt_egr: @kine_ficha.shu_fcmt_egr, shu_fcmt_ing: @kine_ficha.shu_fcmt_ing, shu_fecha_egr: @kine_ficha.shu_fecha_egr, shu_fecha_ing: @kine_ficha.shu_fecha_ing, shu_mets_egr: @kine_ficha.shu_mets_egr, shu_mets_ing: @kine_ficha.shu_mets_ing, shu_metsmax_egr: @kine_ficha.shu_metsmax_egr, shu_metsmax_ing: @kine_ficha.shu_metsmax_ing, shu_mts_egr: @kine_ficha.shu_mts_egr, shu_mts_ing: @kine_ficha.shu_mts_ing, shu_niv_egr: @kine_ficha.shu_niv_egr, shu_niv_ing: @kine_ficha.shu_niv_ing, shu_vol_egr: @kine_ficha.shu_vol_egr, shu_vol_ing: @kine_ficha.shu_vol_ing, tipo_evaluacion: @kine_ficha.tipo_evaluacion } }, as: :json
    assert_response 200
  end

  test "should destroy kine_ficha" do
    assert_difference('KineFicha.count', -1) do
      delete kine_ficha_url(@kine_ficha), as: :json
    end

    assert_response 204
  end
end
