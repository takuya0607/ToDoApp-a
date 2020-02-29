require 'test_helper'

class UserinfosControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get userinfos_edit_url
    assert_response :success
  end

  test "should get new" do
    get userinfos_new_url
    assert_response :success
  end

end
