class SessionController < ApplicationController
  def create
		user = User.where(:username => params[:username]).first

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
		end
    redirect_to '/'
	end

	def destroy
		session[:user_id] = nil
		redirect_to "/"
	end
end
