class ApplicationsController < ApplicationController
  def create
    @application = Application.new(
      user_id: current_user.id,
      tattooer_id: (Tattooer.find_by(first_name: params[:tattooer_id]).id),
      amount: params[:amount],
      number_of_months: params[:number_of_months],
      date_of_appt: params[:date_of_appt],
      description: params[:description],
      approved: params[:approved] || false,
    )

    if @application.save
      render json: { message: "Application created successfully" }, status: :created
    else
      render json: { errors: @application.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @application = current_user.applications.find_by(id: params[:id])
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
    @application = current_user.applications.find_by(id: params[:id])
    @application.destroy
    render json: { message: "Application successfully deleted" }
  end

  def show
    if current_user
      @application = current_user.applications.find_by(id: params[:id])
      render :show
    elsif current_tattooer
      @application = current_tattooer.applications.find_by(id: params[:id])
      render :show
    else
      render json: { message: "Log in, bruh." }
    end
  end

  def index
    if current_user
      @applications = current_user.applications.all
      render :index
    elsif current_tattooer
      @applications = current_tattooer.applications.all
      render :index
    else
      render json: { message: "Log in, bro!" }
    end
  end
end
