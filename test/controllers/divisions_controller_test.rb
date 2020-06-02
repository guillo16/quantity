require 'test_helper'

class DivisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get divisions_show_url
    assert_response :success
  end

  test "should get new" do
    get divisions_new_url
    assert_response :success
  end

  test "should get create" do
    get divisions_create_url
    assert_response :success
  end

end
