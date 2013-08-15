require 'test_helper'

class WsetsControllerTest < ActionController::TestCase
  setup do
    @wset = wsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wset" do
    assert_difference('Wset.count') do
      post :create, wset: { duration: @wset.duration, reps: @wset.reps }
    end

    assert_redirected_to wset_path(assigns(:wset))
  end

  test "should show wset" do
    get :show, id: @wset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wset
    assert_response :success
  end

  test "should update wset" do
    patch :update, id: @wset, wset: { duration: @wset.duration, reps: @wset.reps }
    assert_redirected_to wset_path(assigns(:wset))
  end

  test "should destroy wset" do
    assert_difference('Wset.count', -1) do
      delete :destroy, id: @wset
    end

    assert_redirected_to wsets_path
  end
end
