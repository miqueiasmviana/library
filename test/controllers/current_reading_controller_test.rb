require "test_helper"

class CurrentReadingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get current_reading_index_url
    assert_response :success
  end
end
