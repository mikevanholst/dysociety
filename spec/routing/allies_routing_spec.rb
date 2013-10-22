require "spec_helper"

describe AlliesController do
  describe "routing" do

    it "routes to #index" do
      get("/allies").should route_to("allies#index")
    end

    it "routes to #new" do
      get("/allies/new").should route_to("allies#new")
    end

    it "routes to #show" do
      get("/allies/1").should route_to("allies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/allies/1/edit").should route_to("allies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/allies").should route_to("allies#create")
    end

    it "routes to #update" do
      put("/allies/1").should route_to("allies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/allies/1").should route_to("allies#destroy", :id => "1")
    end

  end
end
