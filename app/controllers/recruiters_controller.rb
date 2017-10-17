class RecruitersController < ApplicationController
  before_action :recruiter_signed_in

  def dashboard
    @page_name = 'dashboard'
  end

  def vacancies
    @page_name = 'vacancy'
    @vacancies = Vacancy.all
  end

  def vacancy_enquiry
    @vacancy = Vacancy.find(params[:id])
  end

  def vacancy_enquiry_message
    @vacancy = Vacancy.find(params[:id])
    @enquiries = Enquiry.find_by(vacancy: @vacancy)
    enquiry = Enquiry.new(vacancy: @vacancy, recruiter_id: current_recruiter.id, message: params[:message])
    enquiry.save!
    redirect_to recruiters_vacancy_enquiry_message_path(@vacancy)
  end

  def enquiries
    @page_name = 'enquiries'
  end

  def profile
    @page_name = 'profile'

  end

  private
    def recruiter_signed_in
      redirect_to root_path unless recruiter_signed_in?
    end
end
