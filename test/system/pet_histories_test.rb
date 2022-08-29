require "application_system_test_case"

class PetHistoriesTest < ApplicationSystemTestCase
  setup do
    @pet_history = pet_histories(:one)
  end

  test "visiting the index" do
    visit pet_histories_url
    assert_selector "h1", text: "Pet histories"
  end

  test "should create pet history" do
    visit pet_histories_url
    click_on "New pet history"

    fill_in "Diagnosis", with: @pet_history.diagnosis
    fill_in "Height", with: @pet_history.height
    fill_in "Pet", with: @pet_history.pet_id
    fill_in "Weight", with: @pet_history.weight
    click_on "Create Pet history"

    assert_text "Pet history was successfully created"
    click_on "Back"
  end

  test "should update Pet history" do
    visit pet_history_url(@pet_history)
    click_on "Edit this pet history", match: :first

    fill_in "Diagnosis", with: @pet_history.diagnosis
    fill_in "Height", with: @pet_history.height
    fill_in "Pet", with: @pet_history.pet_id
    fill_in "Weight", with: @pet_history.weight
    click_on "Update Pet history"

    assert_text "Pet history was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet history" do
    visit pet_history_url(@pet_history)
    click_on "Destroy this pet history", match: :first

    assert_text "Pet history was successfully destroyed"
  end
end
