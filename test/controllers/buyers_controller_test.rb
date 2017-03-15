require 'test_helper'

class BuyersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get buyers_new_url
    assert_response :success
  end

  test "should get create" do
    get buyers_create_url
    assert_response :success
  end

  test "should get update" do
    get buyers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get buyers_destroy_url
    assert_response :success
  end

end
