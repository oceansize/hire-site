require 'rails_helper'

RSpec.describe "Companies", type: :request do
  let(:user) { FactoryGirl.create(:user) }
  let(:company) { FactoryGirl.create(:company, user: user) }
  describe "GET /companies" do
    before do
      user.company = company
      user.save
      login_as user
    end

    it "works! (now write some real specs)" do
      get company_path
      expect(response).to have_http_status(200)
    end
  end
end
