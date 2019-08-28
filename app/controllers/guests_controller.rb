class GuestsController < ApplicationController
before_action :authenticate_user!


    def edit
# show with edit ablities such as change first name
    end

    def create
        
        current_company.guests.create(guest_params) 
        @guests = current_company.guests
        redirect_to company_path(current_company)
        
#  new form filled out and what to do with it (saving)
    end
    
    def destroy
# delete 
    end

    def new
        @guest = Guest.new
#  blank forn
    end 

    def update
#  saving the edits
    end

    def show
     @guest = Guest.find(params[:id])


#  is showing single record
    end

    def index
        @guest = Guest.all

    # show multiple

    end

    private

    def guest_params
        params.require(:guest).permit(:first_name, :last_name, :company_id)
    end

    helper_method :current_company
    def current_company
        @current_company ||= Company.find(params[:company_id])
    end
end
