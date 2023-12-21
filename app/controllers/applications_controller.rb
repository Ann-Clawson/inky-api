class ApplicationsController < ApplicationController
  def create
    @application = Application.new(
      user_id: params[:current_user.id],
      tattooer_id: params[:tattooer.id],
      amount: params[:amount],
      number_of_months: params[:number_of_months],
      date_of_appt: params[:date_of_appt],
      description: params[:description],
      approved: params[:approved],

    )
    if @application.save
      render json: { message: "Application created successfully" }, status: :created
    else
      render json: { errors: application.errors.full_messages }, status: :bad_request
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
      user_name: params[:user_name] || @user.user_name,
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
