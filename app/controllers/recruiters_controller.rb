class RecruitersController < ApplicationController
  before_action :recruiter_signed_in

  def dashboard
    @page_name = 'dashboard'
  end

  def vacancies
    @page_name = 'vacancy'

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
