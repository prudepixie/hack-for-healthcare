require 'test_helper'

class A1csControllerTest < ActionController::TestCase
  setup do
    @a1c = a1cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a1cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a1c" do
    assert_difference('A1c.count') do
      post :create, a1c: { value: @a1c.value }
    end

    assert_redirected_to a1c_path(assigns(:a1c))
  end

  test "should show a1c" do
    get :show, id: @a1c
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a1c
    assert_response :success
  end

  test "should update a1c" do
    patch :update, id: @a1c, a1c: { value: @a1c.value }
    assert_redirected_to a1c_path(assigns(:a1c))
  end

  test "should destroy a1c" do
    assert_difference('A1c.count', -1) do
      delete :destroy, id: @a1c
    end

    assert_redirected_to a1cs_path
  end
end
