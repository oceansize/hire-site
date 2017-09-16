require 'rails_helper'

RSpec.describe "company/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "",
      :description => "MyText",
      :size => "MyString",
      :website => "MyString",
      :user => FactoryGirl.create(:user)
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input[name=?]", "company[name]"

      assert_select "textarea[name=?]", "company[description]"

      assert_select "input[name=?]", "company[size]"

      assert_select "input[name=?]", "company[website]"

      assert_select "input[name=?]", "company[user_id]"
    end
  end
end
