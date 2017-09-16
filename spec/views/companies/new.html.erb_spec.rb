require 'rails_helper'

RSpec.describe "company/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "",
      :description => "MyText",
      :size => "MyString",
      :website => "MyString",
      :user => FactoryGirl.create(:user)
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", company_path, "post" do

      assert_select "input[name=?]", "company[name]"

      assert_select "textarea[name=?]", "company[description]"

      assert_select "input[name=?]", "company[size]"

      assert_select "input[name=?]", "company[website]"

      assert_select "input[name=?]", "company[user_id]"
    end
  end
end
