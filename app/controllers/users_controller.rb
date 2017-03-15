class UsersController < ApplicationController
  
  def new
    @roles = Role.where.not(name:"admin")
    @user = User.new
  end
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      role_id: params[:role_id]
      )
    if @user.save
      session[:user_id] = @user.id  #ask clarification about it
      flash[:success] = 'Successfully created Account'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/signup'
    end
  end
 
end
