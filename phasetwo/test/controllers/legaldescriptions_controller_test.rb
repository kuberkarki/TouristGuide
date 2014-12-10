require 'test_helper'

class LegaldescriptionsControllerTest < ActionController::TestCase
  setup do
    @legaldescription = legaldescriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legaldescriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legaldescription" do
    assert_difference('Legaldescription.count') do
      post :create, legaldescription: { ldesc_createdby: @legaldescription.ldesc_createdby, ldesc_modifiedby: @legaldescription.ldesc_modifiedby, ldescription: @legaldescription.ldescription }
    end

    assert_redirected_to legaldescription_path(assigns(:legaldescription))
  end

  test "should show legaldescription" do
    get :show, id: @legaldescription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legaldescription
    assert_response :success
  end

  test "should update legaldescription" do
    patch :update, id: @legaldescription, legaldescription: { ldesc_createdby: @legaldescription.ldesc_createdby, ldesc_modifiedby: @legaldescription.ldesc_modifiedby, ldescription: @legaldescription.ldescription }
    assert_redirected_to legaldescription_path(assigns(:legaldescription))
  end

  test "should destroy legaldescription" do
    assert_difference('Legaldescription.count', -1) do
      delete :destroy, id: @legaldescription
    end

    assert_redirected_to legaldescriptions_path
  end
end
