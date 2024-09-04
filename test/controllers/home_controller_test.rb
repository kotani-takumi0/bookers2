require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get ttop" do
    get home_ttop_url
    assert_response :success
  end
end
