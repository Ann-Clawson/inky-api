class UsersController < ApplicationController
  def create
    user = User.new(
      last_name: params[:last_name],
      first_name: params[:first_name],
      email: params[:email],
      address: params[:address],
      phone_number: params[:phone_number],
      user_name: params[:user_name],
      password: params[:password],
      password_confirmation: params[:password_confirmation],

    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
