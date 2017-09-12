class AddAvatarToCompany < ActiveRecord::Migration[5.1]
  def change
     add_attachment :companies, :avatar
  end
end
