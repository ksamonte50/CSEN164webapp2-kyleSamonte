class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Adminuser.find_by(name: params[:name])
    if admin&.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to products_url, notice: 'Successfully logged in!'
    else
      redirect_to login_url, alert: 'Invalid username/password combination'
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_url, notice: 'Logged out'
  end
end
