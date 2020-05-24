class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :current_user
  
    def isLogin
        unless @current_user.present?
            return redirect_to login_path
        end
    end
    
    
    private
  
    def current_user
      return unless session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    end
  end
  