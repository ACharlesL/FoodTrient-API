require "rails_helper"

RSpec.describe FridgesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fridges").to route_to("fridges#index")
    end


    it "routes to #show" do
      expect(:get => "/fridges/1").to route_to("fridges#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/fridges").to route_to("fridges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fridges/1").to route_to("fridges#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fridges/1").to route_to("fridges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fridges/1").to route_to("fridges#destroy", :id => "1")
    end

  end
end
