require 'test_helper'

class OrderLinesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_lines_create_url
    assert_response :success
  end

end
