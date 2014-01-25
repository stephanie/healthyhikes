require "spec_helper"

describe MyHikesController do
  describe "routing" do

    it "routes to #index" do
      get("/my_hikes").should route_to("my_hikes#index")
    end

    it "routes to #new" do
      get("/my_hikes/new").should route_to("my_hikes#new")
    end

    it "routes to #show" do
      get("/my_hikes/1").should route_to("my_hikes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/my_hikes/1/edit").should route_to("my_hikes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/my_hikes").should route_to("my_hikes#create")
    end

    it "routes to #update" do
      put("/my_hikes/1").should route_to("my_hikes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/my_hikes/1").should route_to("my_hikes#destroy", :id => "1")
    end

  end
end
