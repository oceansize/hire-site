require 'rails_helper'

RSpec.describe "Companies", type: :request do
  describe "GET /companies" do
    it "works! (now write some real specs)" do
      get company_path
      expect(response).to have_http_status(302)
    end
  end
end
