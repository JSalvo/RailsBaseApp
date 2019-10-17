class ApplicationController < ActionController::Base

  def require_login

      @logged_user = nil
      if not session.has_key?(:user_id)
        redirect_to login_path
        return
      else
        if not session[:user_id]
          redirect_to login_path
          return
        end
      end
      @logged_user = User.find(session[:user_id])

  end

  #protect_from_forgery with: :exception
end
