require 'test_helper'

class AdoptersControllerTest < ActionController::TestCase
  setup do
    @adopter = adopters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adopters)
  end

  test "should create adopter" do
    assert_difference('Adopter.count') do
      post :create, adopter: {  }
    end

    assert_response 201
  end

  test "should show adopter" do
    get :show, id: @adopter
    assert_response :success
  end

  test "should update adopter" do
    put :update, id: @adopter, adopter: {  }
    assert_response 204
  end

  test "should destroy adopter" do
    assert_difference('Adopter.count', -1) do
      delete :destroy, id: @adopter
    end

    assert_response 204
  end
end
