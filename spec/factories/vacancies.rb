FactoryGirl.define do
  factory :vacancy do
    title "MyString"
    description "MyText"
    start_date "2017-09-11 20:11:48"
    salary_min 1
    salary_max 1
    location "MyString"
    bounty 1
    available_position 1
    active false
  end
end
