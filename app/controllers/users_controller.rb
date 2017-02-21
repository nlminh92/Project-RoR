class UsersController < ApplicationController
	def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      redirect_to @user
    else
      render action: "new"
    end
 	end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

 	private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :company, :website, :address, :zip_code, :country, :firstname_contact, :lastname_contact, :phone, :description)
    end
end
