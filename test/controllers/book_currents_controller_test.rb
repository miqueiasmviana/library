require "test_helper"

class BookCurrentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_current_index_url
    assert_response :success
  end
end
