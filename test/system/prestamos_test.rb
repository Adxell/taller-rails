require "application_system_test_case"

class PrestamosTest < ApplicationSystemTestCase
  setup do
    @prestamo = prestamos(:one)
  end

  test "visiting the index" do
    visit prestamos_url
    assert_selector "h1", text: "Prestamos"
  end

  test "creating a Prestamo" do
    visit prestamos_url
    click_on "New Prestamo"

    fill_in "Estado", with: @prestamo.estado
    fill_in "Fecha", with: @prestamo.fecha
    fill_in "Usuario", with: @prestamo.usuario_id
    click_on "Create Prestamo"

    assert_text "Prestamo was successfully created"
    click_on "Back"
  end

  test "updating a Prestamo" do
    visit prestamos_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @prestamo.estado
    fill_in "Fecha", with: @prestamo.fecha
    fill_in "Usuario", with: @prestamo.usuario_id
    click_on "Update Prestamo"

    assert_text "Prestamo was successfully updated"
    click_on "Back"
  end

  test "destroying a Prestamo" do
    visit prestamos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prestamo was successfully destroyed"
  end
end
