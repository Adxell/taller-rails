require 'test_helper'

class ConsultasUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultas_usuario = consultas_usuarios(:one)
  end

  test "should get index" do
    get consultas_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_consultas_usuario_url
    assert_response :success
  end

  test "should create consultas_usuario" do
    assert_difference('ConsultasUsuario.count') do
      post consultas_usuarios_url, params: { consultas_usuario: {  } }
    end

    assert_redirected_to consultas_usuario_url(ConsultasUsuario.last)
  end

  test "should show consultas_usuario" do
    get consultas_usuario_url(@consultas_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultas_usuario_url(@consultas_usuario)
    assert_response :success
  end

  test "should update consultas_usuario" do
    patch consultas_usuario_url(@consultas_usuario), params: { consultas_usuario: {  } }
    assert_redirected_to consultas_usuario_url(@consultas_usuario)
  end

  test "should destroy consultas_usuario" do
    assert_difference('ConsultasUsuario.count', -1) do
      delete consultas_usuario_url(@consultas_usuario)
    end

    assert_redirected_to consultas_usuarios_url
  end
end
