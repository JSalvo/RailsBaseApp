require 'test_helper'

class WwwControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get www_index_url
    assert_response :success
  end

end
