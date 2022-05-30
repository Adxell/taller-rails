require 'test_helper'

class MultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multum = multa(:one)
  end

  test "should get index" do
    get multa_url
    assert_response :success
  end

  test "should get new" do
    get new_multum_url
    assert_response :success
  end

  test "should create multum" do
    assert_difference('Multum.count') do
      post multa_url, params: { multum: { estado: @multum.estado, fecha: @multum.fecha, prestamo_id: @multum.prestamo_id, valor: @multum.valor } }
    end

    assert_redirected_to multum_url(Multum.last)
  end

  test "should show multum" do
    get multum_url(@multum)
    assert_response :success
  end

  test "should get edit" do
    get edit_multum_url(@multum)
    assert_response :success
  end

  test "should update multum" do
    patch multum_url(@multum), params: { multum: { estado: @multum.estado, fecha: @multum.fecha, prestamo_id: @multum.prestamo_id, valor: @multum.valor } }
    assert_redirected_to multum_url(@multum)
  end

  test "should destroy multum" do
    assert_difference('Multum.count', -1) do
      delete multum_url(@multum)
    end

    assert_redirected_to multa_url
  end
end
