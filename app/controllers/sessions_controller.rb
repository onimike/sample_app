class SessionsController < ApplicationController
  def new
	@title = "Sign in"
  end
  
  def create
	user = User.authenticate(params[:session][:email], params[:session][:password])
	
	if user.nil?
		flash.now[:error] = "Invalid email/password combination."
		@title = "Sign in"
		render 'new'
	else
		if((params[:remember])=="1")
			flash[:success] = "Being remembered"
			sign_in_remember user
		else
			flash[:success] = "Not being remembered"
			sign_in_temp user
		end
		user.touch #touches the database to change updated_at in the user model
		redirect_to user
	end
  end
  
  def destroy
	sign_out
	redirect_to root_path
  end
end
