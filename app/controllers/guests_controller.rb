class GuestsController < ApplicationController

    def edit
# show with edit ablities such as change first name
    end

    def create
        
     
        
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
     @guest = Guest.new   
#  is showing single record
    end

    def index
        @guest = Guest.all
    # show multiple

    end

    private

    def guest_params
        params.require(:first_name, :last_name)
    end

end
