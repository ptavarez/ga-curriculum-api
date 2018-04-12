require "rails_helper"

RSpec.describe WeekOneReposController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/week_one_repos").to route_to("week_one_repos#index")
    end


    it "routes to #show" do
      expect(:get => "/week_one_repos/1").to route_to("week_one_repos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/week_one_repos").to route_to("week_one_repos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/week_one_repos/1").to route_to("week_one_repos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/week_one_repos/1").to route_to("week_one_repos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/week_one_repos/1").to route_to("week_one_repos#destroy", :id => "1")
    end

  end
end
