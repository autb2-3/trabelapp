require 'test_helper'

class ReservedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reserved_index_url
    assert_response :success
  end

end
