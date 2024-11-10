require "test_helper"

class NewUserNoticeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_user_notice_index_url
    assert_response :success
  end
end
