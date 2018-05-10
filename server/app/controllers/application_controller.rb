class ApplicationController < ActionController::Base
    
    protect_from_forgery
    
    before_filter :set_user
    def set_user
        @current_user = Student.find_by_uid(902582014)
        session[:user_id] = @current_user.id
    end

end
