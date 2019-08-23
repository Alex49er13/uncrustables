class ApplicationController < ActionController::Base

    def after_sign_in_path_for(word)
        company_path
    end

end
