class UsersController < ApplicationController
# ----- add these lines here: -----
  

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @user_publishes = @user.publishes

  end

  def create
     @user = User.new(user_params)

      if @user.save
        session[:user_id] = @user.id # to automatically login a user that signed up
        flash[:notice] = "You are registered."
        redirect_to root_path
      else
        render :new
      end
  end
    
  
  


  private

    def user_params
      # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
      # that can be submitted by a form to the user model #=> require(:user)
      params.require(:user).permit(:email, :first_name, :username, :last_name, :country, :avatar, :password, :password_confirmation, :role)
    end
    
# ----- end of added lines -----
end

