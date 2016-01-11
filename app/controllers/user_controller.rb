class UserController < ApplicationController

def show
  @user = User.find(params[:id])
  @content = Content.where(user_id: params[:id])
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if current_user.id == @user.id
    user.update(user_params)
  end
  redirect_to controller: 'user', action: 'show'
end

private
def user_params
  params.require(:user).permit(:email, :encrypted_password, :username)
end
