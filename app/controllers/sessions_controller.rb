class SessionsController < ApplicationController

  def new
  	
  end

  def create
  	@user = User.find_by_email(params[:user][:email])
  	if @user and @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
  		redirect_to "/users/#{@user.id}"
  	else
  		flash[:errors] = ['Invalid']
  		redirect_to '/login'
  	end
  end

  def destroy
		session.clear
		redirect_to '/login'
  end

end
