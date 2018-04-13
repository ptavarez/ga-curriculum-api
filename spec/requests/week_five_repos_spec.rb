require 'rails_helper'

RSpec.describe "WeekFiveRepos", type: :request do
  describe "GET /week_five_repos" do
    it "works! (now write some real specs)" do
      get week_five_repos_path
      expect(response).to have_http_status(200)
    end
  end
end
