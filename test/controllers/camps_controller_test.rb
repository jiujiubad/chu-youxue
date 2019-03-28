require 'test_helper'

class CampsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get camps_show_url
    assert_response :success
  end

end
