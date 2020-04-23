class UsersController < ApplicationController
#skip_before_action :authorized, only: [:new, :create]
def new
   @user = User.new
end
def create
  email = params.require(:user).permit(:email)
   isExistingUser = User.where(:email => email["email"])
   if isExistingUser.length > 0
     flash[:alert] = "User already present, try logging in"
      redirect_to '/login'
  else
   @user = User.create(params.require(:user).permit(:username,
   :password,:email))
   session[:user_id] = @user.id
   if @user.save
   redirect_to '/show_projects'
 else
   redirect_to '/users/new',  notice: "Enter correct values!"
 end
 end

end
end
