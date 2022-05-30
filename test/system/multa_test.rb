require "application_system_test_case"

class MultaTest < ApplicationSystemTestCase
  setup do
    @multum = multa(:one)
  end

  test "visiting the index" do
    visit multa_url
    assert_selector "h1", text: "Multa"
  end

  test "creating a Multum" do
    visit multa_url
    click_on "New Multum"

    fill_in "Estado", with: @multum.estado
    fill_in "Fecha", with: @multum.fecha
    fill_in "Prestamo", with: @multum.prestamo_id
    fill_in "Valor", with: @multum.valor
    click_on "Create Multum"

    assert_text "Multum was successfully created"
    click_on "Back"
  end

  test "updating a Multum" do
    visit multa_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @multum.estado
    fill_in "Fecha", with: @multum.fecha
    fill_in "Prestamo", with: @multum.prestamo_id
    fill_in "Valor", with: @multum.valor
    click_on "Update Multum"

    assert_text "Multum was successfully updated"
    click_on "Back"
  end

  test "destroying a Multum" do
    visit multa_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multum was successfully destroyed"
  end
end
