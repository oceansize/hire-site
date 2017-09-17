class DashboardController < ApplicationController
  before_action :set_page_name
  def index

  end

  private
  def set_page_name
    @page_name = 'dashboard'
  end
end
