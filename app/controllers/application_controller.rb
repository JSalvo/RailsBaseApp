class ApplicationController < ActionController::Base

  def require_login

      @logged_user = nil

      # Se non c'è la variabile di session user_id, non c'è stato login ...
      if not session.has_key?(:user_id)
        # ... necessario effettuare il login
        redirect_to login_path
        return
      else
        # Se la variabile di sessione user_id esiste, ma è null, non c'è stato login ...
        if not session[:user_id]
          # ... necessario effettuare il login
          redirect_to login_path
          return
        end
      end
      # Questo è l'utente che ha effettuato il login
      @logged_user = User.find(session[:user_id])

  end

  def get_logged_user
    @logged_user = nil

    if session.has_key?(:user_id)
      if session[:user_id]
        @logged_user = User.find(session[:user_id])
      end
    end

    return @logged_user
  end

  #protect_from_forgery with: :exception
end
