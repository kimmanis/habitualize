require 'test_helper'

class FlossesControllerTest < ActionController::TestCase
  setup do
    @floss = flosses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flosses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floss" do
    assert_difference('Floss.count') do
      post :create, floss: { user: @floss.user }
    end

    assert_redirected_to floss_path(assigns(:floss))
  end

  test "should show floss" do
    get :show, id: @floss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floss
    assert_response :success
  end

  test "should update floss" do
    put :update, id: @floss, floss: { user: @floss.user }
    assert_redirected_to floss_path(assigns(:floss))
  end

  test "should destroy floss" do
    assert_difference('Floss.count', -1) do
      delete :destroy, id: @floss
    end

    assert_redirected_to flosses_path
  end
end
