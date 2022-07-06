require "test_helper"

class TopControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get top_page_url
    assert_response :success
  end
end
