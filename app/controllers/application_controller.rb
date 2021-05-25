class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    def current_user
        #use  memoization for user reference
        @current_user ||=User.find(session[:user_id]) if session[:user_id]
    end 

    def logged_in?
        # Turn current user into boolean , to check if exist i.e  1=True or 0=False
        !!current_user
    end

end
