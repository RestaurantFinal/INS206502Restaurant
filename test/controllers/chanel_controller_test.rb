require "test_helper"

class ChanelControllerTest < ActionDispatch::IntegrationTest
  test "should get Orders" do
    get chanel_Orders_url
    assert_response :success
  end
end
