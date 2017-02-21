class BrandsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to 'brands/dashboard'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end
