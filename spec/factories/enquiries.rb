FactoryGirl.define do
  factory :enquiry do
    type ""
    message "MyText"
    read false
    user nil
    recruiter nil
  end
end
