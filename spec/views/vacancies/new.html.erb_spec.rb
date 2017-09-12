require 'rails_helper'

RSpec.describe "vacancies/new", type: :view do
  before(:each) do
    assign(:vacancy, Vacancy.new(
      :title => "MyString",
      :description => "MyText",
      :salary_min => 1,
      :salary_max => 1,
      :location => "MyString",
      :bounty => 1,
      :available_position => 1,
      :active => false
    ))
  end

  it "renders new vacancy form" do
    render

    assert_select "form[action=?][method=?]", vacancies_path, "post" do

      assert_select "input[name=?]", "vacancy[title]"

      assert_select "textarea[name=?]", "vacancy[description]"

      assert_select "input[name=?]", "vacancy[salary_min]"

      assert_select "input[name=?]", "vacancy[salary_max]"

      assert_select "input[name=?]", "vacancy[location]"

      assert_select "input[name=?]", "vacancy[bounty]"

      assert_select "input[name=?]", "vacancy[available_position]"

      assert_select "input[name=?]", "vacancy[active]"
    end
  end
end
