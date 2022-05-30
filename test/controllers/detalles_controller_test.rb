require 'test_helper'

class DetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle = detalles(:one)
  end

  test "should get index" do
    get detalles_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_url
    assert_response :success
  end

  test "should create detalle" do
    assert_difference('Detalle.count') do
      post detalles_url, params: { detalle: { cantidad: @detalle.cantidad, libro_id: @detalle.libro_id, prestamo_id: @detalle.prestamo_id } }
    end

    assert_redirected_to detalle_url(Detalle.last)
  end

  test "should show detalle" do
    get detalle_url(@detalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_url(@detalle)
    assert_response :success
  end

  test "should update detalle" do
    patch detalle_url(@detalle), params: { detalle: { cantidad: @detalle.cantidad, libro_id: @detalle.libro_id, prestamo_id: @detalle.prestamo_id } }
    assert_redirected_to detalle_url(@detalle)
  end

  test "should destroy detalle" do
    assert_difference('Detalle.count', -1) do
      delete detalle_url(@detalle)
    end

    assert_redirected_to detalles_url
  end
end
