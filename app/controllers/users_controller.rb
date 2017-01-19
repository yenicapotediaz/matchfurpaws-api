class UsersController < ApplicationController
  skip_before_action :authenticate_request


  def create
    user = User.new(user_params)

    if user.save
      render json: {status: 'User created successfully'}, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end


  def login
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :userable_id, :userable_type)
  end
end
