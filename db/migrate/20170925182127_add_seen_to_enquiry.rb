class AddSeenToEnquiry < ActiveRecord::Migration[5.1]
  def change
    add_column :enquiries, :seen, :boolean, default: false
  end
end
