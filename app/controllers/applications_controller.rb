class ApplicationsController < ApplicationController
  before_action :authenticate_user

  def create
    @application = Application.new(
      user_id: current_user.id,
      tattooer_id: params[:tattooer_id],
      amount: params[:amount],
      number_of_months: params[:number_of_months],
      date_of_appt: params[:date_of_appt],
      description: params[:description],
      approved: params[:approved],
    )
    if @application.save
      render json: { message: "Application created successfully" }, status: :created
    else
      render json: { errors: @application.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @application = Application.find_by(id: params[:id])
    @application.update(
      tattooer_id: params[:tattooer_id] || @application.tattooer_id,
      amount: params[:amount] || @application.amount,
      number_of_months: params[:number_of_months] || @application.number_of_months,
      date_of_appt: params[:date_of_appt] || @application.date_of_appt,
      description: params[:description] || @application.description,
      approved: params[:approved] || @application.approved,
    )
    if @application.valid?
      render :show
    else
      render json: { errors: @application.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @application = Application.find_by(id: params[:id])
    @application.destroy
    render json: { message: "Application successfully deleted" }
  end

  def show
    @application = Application.find_by(id: params[:id])
    render :show
  end

  def index
    @applications = Application.all
    render :index
  end
end
