class HomeController < ApplicationController
  def index
    if user_signed_in? && !current_user.has_company?
      redirect_to company_details_new_path
    end

    if user_signed_in? && current_user.has_company?
      redirect_to dashboard_index_path
    end
  end
end
