class CompaniesController < ApplicationController
    before_action :authenticate_user!
    def new
        @company = Company.new
    end

    def create
    
        
        @company = Company.create(company_params) 
    #    if @company.valid?
            redirect_to company_path(@company)
            
    #     else render :new, status: :uprocessable_entity
    #    end
    end

    def index
        @companies = Company.all
        

    end
    def show
        @company = Company.find(params[:id])
    end


    private

    def company_params
        params.require(:company).permit(:name)
    end

    helper_method :current_company
    def current_company
        @current_company ||= Company.find(params[:company_id])
    end
end

