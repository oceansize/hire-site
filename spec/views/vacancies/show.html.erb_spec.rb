require 'rails_helper'

RSpec.describe "vacancies/show", type: :view do
  before(:each) do
    @vacancy = assign(:vacancy, Vacancy.create!(
      :title => "Title",
      :description => "MyText",
      :salary_min => 2,
      :salary_max => 3,
      :location => "Location",
      :bounty => 4,
      :available_position => 5,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
  end
end
