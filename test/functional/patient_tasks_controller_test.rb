require 'test_helper'

class PatientTasksControllerTest < ActionController::TestCase
  setup do
    @patient_task = patient_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_task" do
    assert_difference('PatientTask.count') do
      post :create, patient_task: @patient_task.attributes
    end

    assert_redirected_to patient_task_path(assigns(:patient_task))
  end

  test "should show patient_task" do
    get :show, id: @patient_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_task
    assert_response :success
  end

  test "should update patient_task" do
    put :update, id: @patient_task, patient_task: @patient_task.attributes
    assert_redirected_to patient_task_path(assigns(:patient_task))
  end

  test "should destroy patient_task" do
    assert_difference('PatientTask.count', -1) do
      delete :destroy, id: @patient_task
    end

    assert_redirected_to patient_tasks_path
  end
end
