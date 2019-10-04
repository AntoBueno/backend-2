require 'test_helper'

class UsuasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usua = usuas(:one)
  end

  test "should get index" do
    get usuas_url, as: :json
    assert_response :success
  end

  test "should create usua" do
    assert_difference('Usua.count') do
      post usuas_url, params: { usua: { contrasena: @usua.contrasena, email: @usua.email, nombre: @usua.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show usua" do
    get usua_url(@usua), as: :json
    assert_response :success
  end

  test "should update usua" do
    patch usua_url(@usua), params: { usua: { contrasena: @usua.contrasena, email: @usua.email, nombre: @usua.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy usua" do
    assert_difference('Usua.count', -1) do
      delete usua_url(@usua), as: :json
    end

    assert_response 204
  end
end
