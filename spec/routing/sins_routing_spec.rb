require "spec_helper"

describe SinsController do
  describe "routing" do

    it "routes to #index" do
      get("/sins").should route_to("sins#index")
    end

    it "routes to #new" do
      get("/sins/new").should route_to("sins#new")
    end

    it "routes to #show" do
      get("/sins/1").should route_to("sins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sins/1/edit").should route_to("sins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sins").should route_to("sins#create")
    end

    it "routes to #update" do
      put("/sins/1").should route_to("sins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sins/1").should route_to("sins#destroy", :id => "1")
    end

  end
end
