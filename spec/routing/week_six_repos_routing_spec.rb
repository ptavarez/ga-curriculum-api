require "rails_helper"

RSpec.describe WeekSixReposController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/week_six_repos").to route_to("week_six_repos#index")
    end


    it "routes to #show" do
      expect(:get => "/week_six_repos/1").to route_to("week_six_repos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/week_six_repos").to route_to("week_six_repos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/week_six_repos/1").to route_to("week_six_repos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/week_six_repos/1").to route_to("week_six_repos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/week_six_repos/1").to route_to("week_six_repos#destroy", :id => "1")
    end

  end
end
