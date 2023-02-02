require "test_helper"

class CommmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commments_index_url
    assert_response :success
  end

  test "should get new" do
    get commments_new_url
    assert_response :success
  end

  test "should get show" do
    get commments_show_url
    assert_response :success
  end
end
