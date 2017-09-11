class AddOmniauthToRecruiter < ActiveRecord::Migration[5.1]
  def change
    add_column :recruiters, :provider, :string
    add_column :recruiters, :uid, :string
  end
end
