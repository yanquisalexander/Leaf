require "test_helper"

class LeafWebControllerTest < ActionDispatch::IntegrationTest
  test "should get app" do
    get leaf_web_app_url
    assert_response :success
  end
end
