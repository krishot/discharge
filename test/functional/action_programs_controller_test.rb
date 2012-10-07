require 'test_helper'

class ActionProgramsControllerTest < ActionController::TestCase
  setup do
    @action_program = action_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_program" do
    assert_difference('ActionProgram.count') do
      post :create, action_program: @action_program.attributes
    end

    assert_redirected_to action_program_path(assigns(:action_program))
  end

  test "should show action_program" do
    get :show, id: @action_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_program
    assert_response :success
  end

  test "should update action_program" do
    put :update, id: @action_program, action_program: @action_program.attributes
    assert_redirected_to action_program_path(assigns(:action_program))
  end

  test "should destroy action_program" do
    assert_difference('ActionProgram.count', -1) do
      delete :destroy, id: @action_program
    end

    assert_redirected_to action_programs_path
  end
end
