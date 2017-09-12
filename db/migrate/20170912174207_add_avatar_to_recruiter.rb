class AddAvatarToRecruiter < ActiveRecord::Migration[5.1]
  def change
     add_attachment :recruiters, :avatar
  end
end
