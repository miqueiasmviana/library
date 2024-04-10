require "test_helper"

class WantToReadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get want_to_read_index_url
    assert_response :success
  end
end
