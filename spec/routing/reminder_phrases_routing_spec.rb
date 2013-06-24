require "spec_helper"

describe ReminderPhrasesController do
  describe "routing" do

    it "routes to #index" do
      get("/reminder_phrases").should route_to("reminder_phrases#index")
    end

    it "routes to #new" do
      get("/reminder_phrases/new").should route_to("reminder_phrases#new")
    end

    it "routes to #show" do
      get("/reminder_phrases/1").should route_to("reminder_phrases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reminder_phrases/1/edit").should route_to("reminder_phrases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reminder_phrases").should route_to("reminder_phrases#create")
    end

    it "routes to #update" do
      put("/reminder_phrases/1").should route_to("reminder_phrases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reminder_phrases/1").should route_to("reminder_phrases#destroy", :id => "1")
    end

  end
end
