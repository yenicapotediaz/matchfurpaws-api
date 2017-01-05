require 'test_helper'

class SheltersControllerTest < ActionController::TestCase
  setup do
    @shelter = shelters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shelters)
  end

  test "should create shelter" do
    assert_difference('Shelter.count') do
      post :create, shelter: {  }
    end

    assert_response 201
  end

  test "should show shelter" do
    get :show, id: @shelter
    assert_response :success
  end

  test "should update shelter" do
    put :update, id: @shelter, shelter: {  }
    assert_response 204
  end

  test "should destroy shelter" do
    assert_difference('Shelter.count', -1) do
      delete :destroy, id: @shelter
    end

    assert_response 204
  end
end
