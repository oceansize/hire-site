class Enquiry < ApplicationRecord
  belongs_to :user
  belongs_to :recruiter
end
