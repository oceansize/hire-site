class CreateVacancies < ActiveRecord::Migration[5.1]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.boolean :expired
      t.datetime :start_date
      t.integer :salary_min
      t.integer :salary_max
      t.string :location
      t.integer :bounty
      t.integer :available_positions

      t.timestamps
    end
  end
end
