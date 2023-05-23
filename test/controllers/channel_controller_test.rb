require "test_helper"

class ChannelControllerTest < ActionDispatch::IntegrationTest
  test "should get Orders" do
    get channel_Orders_url
    assert_response :success
  end
end
