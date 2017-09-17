class CreateEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiries do |t|
      t.string :type
      t.text :message
      t.boolean :read
      t.belongs_to :user, foreign_key: true
      t.belongs_to :recruiter, foreign_key: true

      t.timestamps
    end
  end
end
