require 'rails_helper'

RSpec.describe "WeekTwelveRepos", type: :request do
  describe "GET /week_twelve_repos" do
    it "works! (now write some real specs)" do
      get week_twelve_repos_path
      expect(response).to have_http_status(200)
    end
  end
end
