require 'rails_helper'

RSpec.describe "company/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "",
      :description => "MyText",
      :size => "Size",
      :website => "Website",
      :user => FactoryGirl.create(:user)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(//)
  end
end
