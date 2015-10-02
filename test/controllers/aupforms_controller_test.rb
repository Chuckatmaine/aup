require 'test_helper'

class AupformsControllerTest < ActionController::TestCase
  setup do
    @aupform = aupforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aupforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aupform" do
    assert_difference('Aupform.count') do
      post :create, aupform: { acceptdate: @aupform.acceptdate, aupaccept: @aupform.aupaccept, userid: @aupform.userid }
    end

    assert_redirected_to aupform_path(assigns(:aupform))
  end

  test "should show aupform" do
    get :show, id: @aupform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aupform
    assert_response :success
  end

  test "should update aupform" do
    patch :update, id: @aupform, aupform: { acceptdate: @aupform.acceptdate, aupaccept: @aupform.aupaccept, userid: @aupform.userid }
    assert_redirected_to aupform_path(assigns(:aupform))
  end

  test "should destroy aupform" do
    assert_difference('Aupform.count', -1) do
      delete :destroy, id: @aupform
    end

    assert_redirected_to aupforms_path
  end
end
