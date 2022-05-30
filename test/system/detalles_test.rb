require "application_system_test_case"

class DetallesTest < ApplicationSystemTestCase
  setup do
    @detalle = detalles(:one)
  end

  test "visiting the index" do
    visit detalles_url
    assert_selector "h1", text: "Detalles"
  end

  test "creating a Detalle" do
    visit detalles_url
    click_on "New Detalle"

    fill_in "Cantidad", with: @detalle.cantidad
    fill_in "Libro", with: @detalle.libro_id
    fill_in "Prestamo", with: @detalle.prestamo_id
    click_on "Create Detalle"

    assert_text "Detalle was successfully created"
    click_on "Back"
  end

  test "updating a Detalle" do
    visit detalles_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @detalle.cantidad
    fill_in "Libro", with: @detalle.libro_id
    fill_in "Prestamo", with: @detalle.prestamo_id
    click_on "Update Detalle"

    assert_text "Detalle was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalle" do
    visit detalles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalle was successfully destroyed"
  end
end
