require "test_helper"

class AlertEmailPasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alert_email_password_index_url
    assert_response :success
  end
end
