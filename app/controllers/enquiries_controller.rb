class EnquiriesController < ApplicationController
  before_action :set_page_name
  before_action :user_signed_in


  def index
  end

  private
    def set_page_name
      @page_name = 'enquiries'
    end
end
