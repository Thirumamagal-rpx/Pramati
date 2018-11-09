require 'test_helper'

class LaunchControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get launch_new_url
    assert_response :success
  end

end
