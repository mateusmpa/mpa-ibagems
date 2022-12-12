require "application_system_test_case"

class IbagemsTest < ApplicationSystemTestCase
  setup do
    @ibagem = ibagems(:one)
  end

  test "visiting the index" do
    visit ibagems_url
    assert_selector "h1", text: "Ibagems"
  end

  test "should create ibagem" do
    visit ibagems_url
    click_on "New ibagem"

    fill_in "Description", with: @ibagem.description
    fill_in "Name", with: @ibagem.name
    click_on "Create Ibagem"

    assert_text "Ibagem was successfully created"
    click_on "Back"
  end

  test "should update Ibagem" do
    visit ibagem_url(@ibagem)
    click_on "Edit this ibagem", match: :first

    fill_in "Description", with: @ibagem.description
    fill_in "Name", with: @ibagem.name
    click_on "Update Ibagem"

    assert_text "Ibagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Ibagem" do
    visit ibagem_url(@ibagem)
    click_on "Destroy this ibagem", match: :first

    assert_text "Ibagem was successfully destroyed"
  end
end
