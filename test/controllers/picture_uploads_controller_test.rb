require "test_helper"

class PictureUploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get picture_uploads_new_url
    assert_response :success
  end
end
