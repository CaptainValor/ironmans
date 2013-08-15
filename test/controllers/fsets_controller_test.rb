require 'test_helper'

class FsetsControllerTest < ActionController::TestCase
  setup do
    @fset = fsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fset" do
    assert_difference('Fset.count') do
      post :create, fset: { duration: @fset.duration, reps: @fset.reps }
    end

    assert_redirected_to fset_path(assigns(:fset))
  end

  test "should show fset" do
    get :show, id: @fset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fset
    assert_response :success
  end

  test "should update fset" do
    patch :update, id: @fset, fset: { duration: @fset.duration, reps: @fset.reps }
    assert_redirected_to fset_path(assigns(:fset))
  end

  test "should destroy fset" do
    assert_difference('Fset.count', -1) do
      delete :destroy, id: @fset
    end

    assert_redirected_to fsets_path
  end
end
