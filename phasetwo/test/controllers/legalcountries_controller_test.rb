require 'test_helper'

class LegalcountriesControllerTest < ActionController::TestCase
  setup do
    @legalcountry = legalcountries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legalcountries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legalcountry" do
    assert_difference('Legalcountry.count') do
      post :create, legalcountry: { country_createdby: @legalcountry.country_createdby, country_modifiedby: @legalcountry.country_modifiedby, countrycallingcode: @legalcountry.countrycallingcode, countryname: @legalcountry.countryname, countrypostalcode: @legalcountry.countrypostalcode }
    end

    assert_redirected_to legalcountry_path(assigns(:legalcountry))
  end

  test "should show legalcountry" do
    get :show, id: @legalcountry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legalcountry
    assert_response :success
  end

  test "should update legalcountry" do
    patch :update, id: @legalcountry, legalcountry: { country_createdby: @legalcountry.country_createdby, country_modifiedby: @legalcountry.country_modifiedby, countrycallingcode: @legalcountry.countrycallingcode, countryname: @legalcountry.countryname, countrypostalcode: @legalcountry.countrypostalcode }
    assert_redirected_to legalcountry_path(assigns(:legalcountry))
  end

  test "should destroy legalcountry" do
    assert_difference('Legalcountry.count', -1) do
      delete :destroy, id: @legalcountry
    end

    assert_redirected_to legalcountries_path
  end
end
