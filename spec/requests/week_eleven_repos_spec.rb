require 'rails_helper'

RSpec.describe "WeekElevenRepos", type: :request do
  describe "GET /week_eleven_repos" do
    it "works! (now write some real specs)" do
      get week_eleven_repos_path
      expect(response).to have_http_status(200)
    end
  end
end
