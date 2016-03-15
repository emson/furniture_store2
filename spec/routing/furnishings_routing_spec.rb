require "rails_helper"

describe FurnishingsController do
  describe "routing" do

    it "routes to #index" do
      get("/furnishings").should route_to("furnishings#index")
    end

    it "routes to #new" do
      get("/furnishings/new").should route_to("furnishings#new")
    end

    it "routes to #show" do
      get("/furnishings/1").should route_to("furnishings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/furnishings/1/edit").should route_to("furnishings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/furnishings").should route_to("furnishings#create")
    end

    it "routes to #update" do
      put("/furnishings/1").should route_to("furnishings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/furnishings/1").should route_to("furnishings#destroy", :id => "1")
    end

  end
end
