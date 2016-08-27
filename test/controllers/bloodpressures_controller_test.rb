require 'test_helper'

class BloodpressuresControllerTest < ActionController::TestCase
  setup do
    @bloodpressure = bloodpressures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloodpressures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloodpressure" do
    assert_difference('Bloodpressure.count') do
      post :create, bloodpressure: { diastolic: @bloodpressure.diastolic, systolic: @bloodpressure.systolic }
    end

    assert_redirected_to bloodpressure_path(assigns(:bloodpressure))
  end

  test "should show bloodpressure" do
    get :show, id: @bloodpressure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloodpressure
    assert_response :success
  end

  test "should update bloodpressure" do
    patch :update, id: @bloodpressure, bloodpressure: { diastolic: @bloodpressure.diastolic, systolic: @bloodpressure.systolic }
    assert_redirected_to bloodpressure_path(assigns(:bloodpressure))
  end

  test "should destroy bloodpressure" do
    assert_difference('Bloodpressure.count', -1) do
      delete :destroy, id: @bloodpressure
    end

    assert_redirected_to bloodpressures_path
  end
end
