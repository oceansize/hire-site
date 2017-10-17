class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update]
  before_action :set_page_name
  before_action :user_signed_in


  def show
    redirect_to new_company_path unless @company
  end

  # GET /companies/new
  def new
    @company = Company.new(user: current_user)
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params.merge(user: current_user))

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def vacancy_enquiry_message
    reply = Enquiry.find(params[:id])
    @vacancy = Vacancy.find(reply.vacancy_id)
    enquiry = Enquiry.new(vacancy: @vacancy, user_id: current_user.id, message: params[:message])
    enquiry.save!
    redirect_to enquiry_path(enquiry)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      if current_user.nil?
        redirect_to root_path
      else
        @company = current_user.company
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :description, :size, :website, :user_id, :avatar)
    end

    def set_page_name
      @page_name = 'company'
    end
end
