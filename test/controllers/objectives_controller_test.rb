require 'test_helper'

class ObjectivesControllerTest < ActionDispatch::IntegrationTest
  test "should get complete" do
    get objectives_complete_url
    assert_response :success
  end

end
