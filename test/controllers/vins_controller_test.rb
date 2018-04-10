require 'test_helper'

class VinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vins_index_url
    assert_response :success
  end

  test "should get show" do
    get vins_show_url
    assert_response :success
  end

  test "should get edit" do
    get vins_edit_url
    assert_response :success
  end

  test "should get create" do
    get vins_create_url
    assert_response :success
  end

end
