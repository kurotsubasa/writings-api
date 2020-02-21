require "rails_helper"

RSpec.describe WritingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/writings").to route_to("writings#index")
    end


    it "routes to #show" do
      expect(:get => "/writings/1").to route_to("writings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/writings").to route_to("writings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/writings/1").to route_to("writings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/writings/1").to route_to("writings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/writings/1").to route_to("writings#destroy", :id => "1")
    end

  end
end
