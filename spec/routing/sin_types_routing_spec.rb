require "spec_helper"

describe SinTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/sin_types").should route_to("sin_types#index")
    end

    it "routes to #new" do
      get("/sin_types/new").should route_to("sin_types#new")
    end

    it "routes to #show" do
      get("/sin_types/1").should route_to("sin_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sin_types/1/edit").should route_to("sin_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sin_types").should route_to("sin_types#create")
    end

    it "routes to #update" do
      put("/sin_types/1").should route_to("sin_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sin_types/1").should route_to("sin_types#destroy", :id => "1")
    end

  end
end
