require "application_system_test_case"

class TacosTest < ApplicationSystemTestCase
  setup do
    @taco = tacos(:one)
  end

  test "visiting the index" do
    visit tacos_url
    assert_selector "h1", text: "Tacos"
  end

  test "creating a Taco" do
    visit tacos_url
    click_on "New Taco"

    check "Cheese" if @taco.cheese
    fill_in "Name", with: @taco.name
    fill_in "Tortilla", with: @taco.tortilla
    fill_in "Type", with: @taco.type
    click_on "Create Taco"

    assert_text "Taco was successfully created"
    click_on "Back"
  end

  test "updating a Taco" do
    visit tacos_url
    click_on "Edit", match: :first

    check "Cheese" if @taco.cheese
    fill_in "Name", with: @taco.name
    fill_in "Tortilla", with: @taco.tortilla
    fill_in "Type", with: @taco.type
    click_on "Update Taco"

    assert_text "Taco was successfully updated"
    click_on "Back"
  end

  test "destroying a Taco" do
    visit tacos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taco was successfully destroyed"
  end
end
