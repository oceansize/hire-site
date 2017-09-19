class RecruitersController < ApplicationController
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
end
