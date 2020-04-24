require 'test_helper'

class EnologonewspapersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enologonewspapers_index_url
    assert_response :success
  end

end
