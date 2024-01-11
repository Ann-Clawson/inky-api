class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create, :index]

  def create
    @user = User.new(
      last_name: params[:last_name],
      first_name: params[:first_name],
      email: params[:email],
      address: params[:address],
      phone_number: params[:phone_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin] || false,
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: current_user.id)
    @user.update(
      last_name: params[:last_name] || @user.last_name,
      first_name: params[:first_name] || @user.first_name,
      email: params[:email] || @user.email,
      address: params[:address] || @user.address,
      phone_number: params[:phone_number] || @user.phone_number,
      password: params[:password] || @user.password,
      password_confirmation: params[:password_confirmation] || @user.password_confirmation,
    )
    if @user.valid?
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by(id: current_user.id)
    @user.destroy
    render json: { message: "user successfully deleted" }
  end

  def show
    @user = User.find_by(id: current_user.id)
    render :show
  end

  def index
    @users = User.all
    render :index
  end
end
