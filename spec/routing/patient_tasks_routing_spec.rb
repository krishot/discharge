require "spec_helper"

describe PatientTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/patient_tasks").should route_to("patient_tasks#index")
    end

    it "routes to #new" do
      get("/patient_tasks/new").should route_to("patient_tasks#new")
    end

    it "routes to #show" do
      get("/patient_tasks/1").should route_to("patient_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/patient_tasks/1/edit").should route_to("patient_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/patient_tasks").should route_to("patient_tasks#create")
    end

    it "routes to #update" do
      put("/patient_tasks/1").should route_to("patient_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/patient_tasks/1").should route_to("patient_tasks#destroy", :id => "1")
    end

  end
end
