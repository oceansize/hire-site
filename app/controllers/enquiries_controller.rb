class EnquiriesController < ApplicationController
  before_action :set_page_name
  before_action :user_signed_in

  def index
    @vacancies = Vacancy.where(company_id: current_user.company.id)
    @enquiries = Enquiry.where(vacancy_id: @vacancies).group_by(&:recruiter_id).reject{|k,v|k.nil?}
  end

  def show
    enquiry = Enquiry.find(params[:id])
    @enquiries = Enquiry.where(vacancy_id: enquiry.vacancy_id, recruiter_id: enquiry.recruiter_id)
    @enquiries.each{ |e| e.seen; e.save }
  end

  private

  def set_page_name
    @page_name = 'enquiries'
  end
end
