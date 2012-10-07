require "spec_helper"

describe ActionProgramsController do
  describe "routing" do

    it "routes to #index" do
      get("/action_programs").should route_to("action_programs#index")
    end

    it "routes to #new" do
      get("/action_programs/new").should route_to("action_programs#new")
    end

    it "routes to #show" do
      get("/action_programs/1").should route_to("action_programs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/action_programs/1/edit").should route_to("action_programs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/action_programs").should route_to("action_programs#create")
    end

    it "routes to #update" do
      put("/action_programs/1").should route_to("action_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/action_programs/1").should route_to("action_programs#destroy", :id => "1")
    end

  end
end
