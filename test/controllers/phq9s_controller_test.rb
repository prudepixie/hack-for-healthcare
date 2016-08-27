require 'test_helper'

class Phq9sControllerTest < ActionController::TestCase
  setup do
    @phq9 = phq9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phq9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phq9" do
    assert_difference('Phq9.count') do
      post :create, phq9: { value: @phq9.value }
    end

    assert_redirected_to phq9_path(assigns(:phq9))
  end

  test "should show phq9" do
    get :show, id: @phq9
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phq9
    assert_response :success
  end

  test "should update phq9" do
    patch :update, id: @phq9, phq9: { value: @phq9.value }
    assert_redirected_to phq9_path(assigns(:phq9))
  end

  test "should destroy phq9" do
    assert_difference('Phq9.count', -1) do
      delete :destroy, id: @phq9
    end

    assert_redirected_to phq9s_path
  end
end
