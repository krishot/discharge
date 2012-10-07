require "spec_helper"

describe ActionTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/action_tasks").should route_to("action_tasks#index")
    end

    it "routes to #new" do
      get("/action_tasks/new").should route_to("action_tasks#new")
    end

    it "routes to #show" do
      get("/action_tasks/1").should route_to("action_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/action_tasks/1/edit").should route_to("action_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/action_tasks").should route_to("action_tasks#create")
    end

    it "routes to #update" do
      put("/action_tasks/1").should route_to("action_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/action_tasks/1").should route_to("action_tasks#destroy", :id => "1")
    end

  end
end
