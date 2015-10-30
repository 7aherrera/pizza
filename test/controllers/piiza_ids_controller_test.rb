require 'test_helper'

class PiizaIdsControllerTest < ActionController::TestCase
  setup do
    @piiza_id = piiza_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piiza_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piiza_id" do
    assert_difference('PiizaId.count') do
      post :create, piiza_id: { name: @piiza_id.name, number: @piiza_id.number }
    end

    assert_redirected_to piiza_id_path(assigns(:piiza_id))
  end

  test "should show piiza_id" do
    get :show, id: @piiza_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piiza_id
    assert_response :success
  end

  test "should update piiza_id" do
    patch :update, id: @piiza_id, piiza_id: { name: @piiza_id.name, number: @piiza_id.number }
    assert_redirected_to piiza_id_path(assigns(:piiza_id))
  end

  test "should destroy piiza_id" do
    assert_difference('PiizaId.count', -1) do
      delete :destroy, id: @piiza_id
    end

    assert_redirected_to piiza_ids_path
  end
end
