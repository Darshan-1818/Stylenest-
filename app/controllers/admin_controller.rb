class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username]=="darshan" && params[:password] == "123456"
        session[:admin] = "darshan"
        redirect_to stores_url
      else
        flash[:notice] = "Invalid username/password. Try again"
        render :action=> :login,status: :unprocessable_entity
      end 
    end 
  end
  def logout
    session[:admin] = nil
    flash[:notice] = "You are logged out"
    redirect_to :action=>:login
  end
end
