require "rails_helper"

RSpec.describe UserAnswersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_answers").to route_to("user_answers#index")
    end


    it "routes to #show" do
      expect(:get => "/user_answers/1").to route_to("user_answers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_answers").to route_to("user_answers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_answers/1").to route_to("user_answers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_answers/1").to route_to("user_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_answers/1").to route_to("user_answers#destroy", :id => "1")
    end

  end
end
