require "rails_helper"

RSpec.describe RestroomsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restrooms").to route_to("restrooms#index")
    end


    it "routes to #show" do
      expect(:get => "/restrooms/1").to route_to("restrooms#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/restrooms").to route_to("restrooms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restrooms/1").to route_to("restrooms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restrooms/1").to route_to("restrooms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restrooms/1").to route_to("restrooms#destroy", :id => "1")
    end

  end
end
