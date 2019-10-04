require 'test_helper'

class FormulariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formulario = formularios(:one)
  end

  test "should get index" do
    get formularios_url, as: :json
    assert_response :success
  end

  test "should create formulario" do
    assert_difference('Formulario.count') do
      post formularios_url, params: { formulario: { Nombre: @formulario.Nombre, confirmPassword: @formulario.confirmPassword, email: @formulario.email, password: @formulario.password } }, as: :json
    end

    assert_response 201
  end

  test "should show formulario" do
    get formulario_url(@formulario), as: :json
    assert_response :success
  end

  test "should update formulario" do
    patch formulario_url(@formulario), params: { formulario: { Nombre: @formulario.Nombre, confirmPassword: @formulario.confirmPassword, email: @formulario.email, password: @formulario.password } }, as: :json
    assert_response 200
  end

  test "should destroy formulario" do
    assert_difference('Formulario.count', -1) do
      delete formulario_url(@formulario), as: :json
    end

    assert_response 204
  end
end
