require "test_helper"

class BookCurrentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_current_index_url
    assert_response :success
  end
end
