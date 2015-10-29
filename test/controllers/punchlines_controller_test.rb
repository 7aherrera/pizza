require 'test_helper'

class PunchlinesControllerTest < ActionController::TestCase
  setup do
    @punchline = punchlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punchlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punchline" do
    assert_difference('Punchline.count') do
      post :create, punchline: { name: @punchline.name }
    end

    assert_redirected_to punchline_path(assigns(:punchline))
  end

  test "should show punchline" do
    get :show, id: @punchline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punchline
    assert_response :success
  end

  test "should update punchline" do
    patch :update, id: @punchline, punchline: { name: @punchline.name }
    assert_redirected_to punchline_path(assigns(:punchline))
  end

  test "should destroy punchline" do
    assert_difference('Punchline.count', -1) do
      delete :destroy, id: @punchline
    end

    assert_redirected_to punchlines_path
  end
end
