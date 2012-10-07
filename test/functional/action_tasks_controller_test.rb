require 'test_helper'

class ActionTasksControllerTest < ActionController::TestCase
  setup do
    @action_task = action_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_task" do
    assert_difference('ActionTask.count') do
      post :create, action_task: @action_task.attributes
    end

    assert_redirected_to action_task_path(assigns(:action_task))
  end

  test "should show action_task" do
    get :show, id: @action_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_task
    assert_response :success
  end

  test "should update action_task" do
    put :update, id: @action_task, action_task: @action_task.attributes
    assert_redirected_to action_task_path(assigns(:action_task))
  end

  test "should destroy action_task" do
    assert_difference('ActionTask.count', -1) do
      delete :destroy, id: @action_task
    end

    assert_redirected_to action_tasks_path
  end
end
