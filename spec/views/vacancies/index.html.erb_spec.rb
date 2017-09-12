require 'rails_helper'

RSpec.describe "vacancies/index", type: :view do
  before(:each) do
    assign(:vacancies, [
      Vacancy.create!(
        :title => "Title",
        :description => "MyText",
        :salary_min => 2,
        :salary_max => 3,
        :location => "Location",
        :bounty => 4,
        :available_position => 5,
        :active => false
      ),
      Vacancy.create!(
        :title => "Title",
        :description => "MyText",
        :salary_min => 2,
        :salary_max => 3,
        :location => "Location",
        :bounty => 4,
        :available_position => 5,
        :active => false
      )
    ])
  end

  it "renders a list of vacancies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
