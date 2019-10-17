class SessionController < ApplicationController

  # Crea una sessione se il login va a buon fine
  def create
		user = User.where(:username => params[:username]).first

		if user && user.authenticate(params[:password])
      # Login andato a buon fine
			session[:user_id] = user.id
      redirect_to index_path(notice: "Login correttamente effettuato!")
      return
		end
    redirect_to index_path(notice: "Non è stato possibile effettuare il login")
    return
	end

  # Distrugge la sessione esistente
	def destroy
		session[:user_id] = nil
		redirect_to "/"
	end
end
