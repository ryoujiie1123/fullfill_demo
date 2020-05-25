require 'test_helper'

class SeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seet = seets(:one)
  end

  test "should get index" do
    get seets_url
    assert_response :success
  end

  test "should get new" do
    get new_seet_url
    assert_response :success
  end

  test "should create seet" do
    assert_difference('Seet.count') do
      post seets_url, params: { seet: { client_id: @seet.client_id, remain_seat: @seet.remain_seat } }
    end

    assert_redirected_to seet_url(Seet.last)
  end

  test "should show seet" do
    get seet_url(@seet)
    assert_response :success
  end

  test "should get edit" do
    get edit_seet_url(@seet)
    assert_response :success
  end

  test "should update seet" do
    patch seet_url(@seet), params: { seet: { client_id: @seet.client_id, remain_seat: @seet.remain_seat } }
    assert_redirected_to seet_url(@seet)
  end

  test "should destroy seet" do
    assert_difference('Seet.count', -1) do
      delete seet_url(@seet)
    end

    assert_redirected_to seets_url
  end
end
