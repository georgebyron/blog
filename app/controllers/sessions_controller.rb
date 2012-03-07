class SessionsController < ApplicationController
  def new
  end

  def create
	user = login(params[:email], params[:password], params[:remember_me])
		if user
			redirect_back_or_to root_url, :notice => "Zalogowany!"
		else
			flash.now.alert = "something goes wrong"
			render :new
		end
  end

  def destroy
	logout
	redirect_to root_url, :notice => "Wylogowany"
  end

end
