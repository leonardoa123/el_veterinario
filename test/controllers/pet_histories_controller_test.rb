require "test_helper"

class PetHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_history = pet_histories(:one)
  end

  test "should get index" do
    get pet_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_history_url
    assert_response :success
  end

  test "should create pet_history" do
    assert_difference("PetHistory.count") do
      post pet_histories_url, params: { pet_history: { diagnosis: @pet_history.diagnosis, height: @pet_history.height, pet_id: @pet_history.pet_id, weight: @pet_history.weight } }
    end

    assert_redirected_to pet_history_url(PetHistory.last)
  end

  test "should show pet_history" do
    get pet_history_url(@pet_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_history_url(@pet_history)
    assert_response :success
  end

  test "should update pet_history" do
    patch pet_history_url(@pet_history), params: { pet_history: { diagnosis: @pet_history.diagnosis, height: @pet_history.height, pet_id: @pet_history.pet_id, weight: @pet_history.weight } }
    assert_redirected_to pet_history_url(@pet_history)
  end

  test "should destroy pet_history" do
    assert_difference("PetHistory.count", -1) do
      delete pet_history_url(@pet_history)
    end

    assert_redirected_to pet_histories_url
  end
end
