require 'test_helper'

class UsuariossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuarioss = usuariosses(:one)
  end

  test "should get index" do
    get usuariosses_url, as: :json
    assert_response :success
  end

  test "should create usuarioss" do
    assert_difference('Usuarioss.count') do
      post usuariosses_url, params: { usuarioss: { contrasena: @usuarioss.contrasena, email: @usuarioss.email, nombre: @usuarioss.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show usuarioss" do
    get usuarioss_url(@usuarioss), as: :json
    assert_response :success
  end

  test "should update usuarioss" do
    patch usuarioss_url(@usuarioss), params: { usuarioss: { contrasena: @usuarioss.contrasena, email: @usuarioss.email, nombre: @usuarioss.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy usuarioss" do
    assert_difference('Usuarioss.count', -1) do
      delete usuarioss_url(@usuarioss), as: :json
    end

    assert_response 204
  end
end
