require 'test_helper'

class FishsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get fishs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get fishs_destroy_url
    assert_response :success
  end

end
