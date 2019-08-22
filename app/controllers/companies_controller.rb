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

    def show
        @company = Company.find(params[:id])
    end


    private

    def company_params
        params.require(:company).permit(:name)
    end
end

