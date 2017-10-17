class AddUsersToEnquiry < ActiveRecord::Migration[5.1]
  def change
    add_reference :enquiries, :recruiter, foreign_key: true
    add_reference :enquiries, :user, foreign_key: true
  end
end
