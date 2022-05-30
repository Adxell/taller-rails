require "application_system_test_case"

class ConsultasUsuariosTest < ApplicationSystemTestCase
  setup do
    @consultas_usuario = consultas_usuarios(:one)
  end

  test "visiting the index" do
    visit consultas_usuarios_url
    assert_selector "h1", text: "Consultas Usuarios"
  end

  test "creating a Consultas usuario" do
    visit consultas_usuarios_url
    click_on "New Consultas Usuario"

    click_on "Create Consultas usuario"

    assert_text "Consultas usuario was successfully created"
    click_on "Back"
  end

  test "updating a Consultas usuario" do
    visit consultas_usuarios_url
    click_on "Edit", match: :first

    click_on "Update Consultas usuario"

    assert_text "Consultas usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultas usuario" do
    visit consultas_usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultas usuario was successfully destroyed"
  end
end
