class AddCompanyToVacancy < ActiveRecord::Migration[5.1]
  def change
    add_column :vacancies, :company_id, :integer
  end
end
