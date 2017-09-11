class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.string :size
      t.string :url
      t.text :info
      t.string :location

      t.timestamps
    end
  end
end
