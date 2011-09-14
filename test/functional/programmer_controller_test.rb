require 'test_helper'

class ProgrammerControllerTest < ActionController::TestCase
  setup do
    @programmer = programmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programmer)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programmer" do
    assert_difference('Programmer.count') do
      post :create, :programmer => @programmer.attributes
    end

    assert_redirected_to programmer_path(assigns(:programmer))
  end

  test "should show programmer" do
    get :show, :id => @programmer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @programmer.to_param
    assert_response :success
  end

  test "should update programmer" do
    put :update, :id => @programmer.to_param, :programmer => @programmer.attributes
    assert_redirected_to programmer_path(assigns(:programmer))
  end

  test "should destroy programmer" do
    assert_difference('Programmer.count', -1) do
      delete :destroy, :id => @programmer.to_param
    end

    assert_redirected_to programmers_path
  end
end
