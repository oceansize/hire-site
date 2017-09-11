FactoryGirl.define do
  factory :vacancy do
    belongs_to ""
    title "MyString"
    description "MyText"
    active false
    expired false
    start_date "2017-09-10 19:50:16"
    salary_min ""
    salary_max ""
    location "MyString"
    bounty ""
    available_positions 1
  end
end
