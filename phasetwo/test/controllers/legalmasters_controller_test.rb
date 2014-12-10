require 'test_helper'

class LegalmastersControllerTest < ActionController::TestCase
  setup do
    @legalmaster = legalmasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legalmasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legalmaster" do
    assert_difference('Legalmaster.count') do
      post :create, legalmaster: { lmcreatedby: @legalmaster.lmcreatedby, lmdesc: @legalmaster.lmdesc, lmmodifiedby: @legalmaster.lmmodifiedby, lmname: @legalmaster.lmname }
    end

    assert_redirected_to legalmaster_path(assigns(:legalmaster))
  end

  test "should show legalmaster" do
    get :show, id: @legalmaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legalmaster
    assert_response :success
  end

  test "should update legalmaster" do
    patch :update, id: @legalmaster, legalmaster: { lmcreatedby: @legalmaster.lmcreatedby, lmdesc: @legalmaster.lmdesc, lmmodifiedby: @legalmaster.lmmodifiedby, lmname: @legalmaster.lmname }
    assert_redirected_to legalmaster_path(assigns(:legalmaster))
  end

  test "should destroy legalmaster" do
    assert_difference('Legalmaster.count', -1) do
      delete :destroy, id: @legalmaster
    end

    assert_redirected_to legalmasters_path
  end
end
