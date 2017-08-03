class UsersController < ApplicationController

  def new
    @user = User.new(
      email: params["email"],
      password: params["password"],
      full_name: params["full_name"],
      message: params["message"]
    )
    if @user.save
      render "new.json.jbuilder", status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render "login.json.jbuilder", status: :accepted
    else
      render json: { errors: "Error: Your email or password is incorrect." }, status: :unauthorized
    end
  end
end