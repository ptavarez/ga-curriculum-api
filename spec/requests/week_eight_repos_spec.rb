require 'rails_helper'

RSpec.describe "WeekEightRepos", type: :request do
  describe "GET /week_eight_repos" do
    it "works! (now write some real specs)" do
      get week_eight_repos_path
      expect(response).to have_http_status(200)
    end
  end
end
