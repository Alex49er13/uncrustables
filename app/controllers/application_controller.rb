class ApplicationController < ActionController::Base

    def after_sign_in_path_for(admin)
        new_user_path
    end

    def show

    end
end
