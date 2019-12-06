require "rails_helper"

RSpec.describe CoresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cores").to route_to("cores#index")
    end

    it "routes to #new" do
      expect(:get => "/cores/new").to route_to("cores#new")
    end

    it "routes to #show" do
      expect(:get => "/cores/1").to route_to("cores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cores/1/edit").to route_to("cores#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cores").to route_to("cores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cores/1").to route_to("cores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cores/1").to route_to("cores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cores/1").to route_to("cores#destroy", :id => "1")
    end
  end
end
