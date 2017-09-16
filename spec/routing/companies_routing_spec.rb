require "rails_helper"

RSpec.describe CompaniesController, type: :routing do
  describe "routing" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in user
    end

    it "routes to #show" do
      expect(:get => "/company").to route_to("companies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/company/edit").to route_to("companies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/company").to route_to("companies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/company").to route_to("companies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/company").to route_to("companies#update", :id => "1")
    end
  end
end
