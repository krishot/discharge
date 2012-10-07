require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ActionTasksController do

  # This should return the minimal set of attributes required to create a valid
  # ActionTask. As you add validations to ActionTask, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ActionTasksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all action_tasks as @action_tasks" do
      action_task = ActionTask.create! valid_attributes
      get :index, {}, valid_session
      assigns(:action_tasks).should eq([action_task])
    end
  end

  describe "GET show" do
    it "assigns the requested action_task as @action_task" do
      action_task = ActionTask.create! valid_attributes
      get :show, {:id => action_task.to_param}, valid_session
      assigns(:action_task).should eq(action_task)
    end
  end

  describe "GET new" do
    it "assigns a new action_task as @action_task" do
      get :new, {}, valid_session
      assigns(:action_task).should be_a_new(ActionTask)
    end
  end

  describe "GET edit" do
    it "assigns the requested action_task as @action_task" do
      action_task = ActionTask.create! valid_attributes
      get :edit, {:id => action_task.to_param}, valid_session
      assigns(:action_task).should eq(action_task)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ActionTask" do
        expect {
          post :create, {:action_task => valid_attributes}, valid_session
        }.to change(ActionTask, :count).by(1)
      end

      it "assigns a newly created action_task as @action_task" do
        post :create, {:action_task => valid_attributes}, valid_session
        assigns(:action_task).should be_a(ActionTask)
        assigns(:action_task).should be_persisted
      end

      it "redirects to the created action_task" do
        post :create, {:action_task => valid_attributes}, valid_session
        response.should redirect_to(ActionTask.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved action_task as @action_task" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActionTask.any_instance.stub(:save).and_return(false)
        post :create, {:action_task => {}}, valid_session
        assigns(:action_task).should be_a_new(ActionTask)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActionTask.any_instance.stub(:save).and_return(false)
        post :create, {:action_task => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested action_task" do
        action_task = ActionTask.create! valid_attributes
        # Assuming there are no other action_tasks in the database, this
        # specifies that the ActionTask created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ActionTask.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => action_task.to_param, :action_task => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested action_task as @action_task" do
        action_task = ActionTask.create! valid_attributes
        put :update, {:id => action_task.to_param, :action_task => valid_attributes}, valid_session
        assigns(:action_task).should eq(action_task)
      end

      it "redirects to the action_task" do
        action_task = ActionTask.create! valid_attributes
        put :update, {:id => action_task.to_param, :action_task => valid_attributes}, valid_session
        response.should redirect_to(action_task)
      end
    end

    describe "with invalid params" do
      it "assigns the action_task as @action_task" do
        action_task = ActionTask.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActionTask.any_instance.stub(:save).and_return(false)
        put :update, {:id => action_task.to_param, :action_task => {}}, valid_session
        assigns(:action_task).should eq(action_task)
      end

      it "re-renders the 'edit' template" do
        action_task = ActionTask.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActionTask.any_instance.stub(:save).and_return(false)
        put :update, {:id => action_task.to_param, :action_task => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested action_task" do
      action_task = ActionTask.create! valid_attributes
      expect {
        delete :destroy, {:id => action_task.to_param}, valid_session
      }.to change(ActionTask, :count).by(-1)
    end

    it "redirects to the action_tasks list" do
      action_task = ActionTask.create! valid_attributes
      delete :destroy, {:id => action_task.to_param}, valid_session
      response.should redirect_to(action_tasks_url)
    end
  end

end