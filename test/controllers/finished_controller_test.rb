require "test_helper"

class FinishedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get finished_index_url
    assert_response :success
  end
end
