require 'test_helper'

class WastesControllerTest < ActionController::TestCase
  setup do
    @waste = wastes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wastes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waste" do
    assert_difference('Waste.count') do
      post :create, waste: { audit_id: @waste.audit_id, material_type: @waste.material_type, note: @waste.note, weight: @waste.weight }
    end

    assert_redirected_to waste_path(assigns(:waste))
  end

  test "should show waste" do
    get :show, id: @waste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waste
    assert_response :success
  end

  test "should update waste" do
    patch :update, id: @waste, waste: { audit_id: @waste.audit_id, material_type: @waste.material_type, note: @waste.note, weight: @waste.weight }
    assert_redirected_to waste_path(assigns(:waste))
  end

  test "should destroy waste" do
    assert_difference('Waste.count', -1) do
      delete :destroy, id: @waste
    end

    assert_redirected_to wastes_path
  end
end
