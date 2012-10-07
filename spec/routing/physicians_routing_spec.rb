require "spec_helper"

describe PhysiciansController do
  describe "routing" do

    it "routes to #index" do
      get("/physicians").should route_to("physicians#index")
    end

    it "routes to #new" do
      get("/physicians/new").should route_to("physicians#new")
    end

    it "routes to #show" do
      get("/physicians/1").should route_to("physicians#show", :id => "1")
    end

    it "routes to #edit" do
      get("/physicians/1/edit").should route_to("physicians#edit", :id => "1")
    end

    it "routes to #create" do
      post("/physicians").should route_to("physicians#create")
    end

    it "routes to #update" do
      put("/physicians/1").should route_to("physicians#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/physicians/1").should route_to("physicians#destroy", :id => "1")
    end

  end
end
