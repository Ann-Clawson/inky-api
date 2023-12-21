class TattooersController < ApplicationController
  before_action :authenticate_tattooer, except: [:create]

  def create
    @tattooer = Tattooer.new(
      last_name: params[:last_name],
      first_name: params[:first_name],
      email: params[:email],
      address: params[:address],
      phone_number: params[:phone_number],
      tattoo_shop: params[:tattoo_shop],
      user_name: params[:user_name],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @tattooer.save
      render json: { message: "Tattooer created successfully" }, status: :created
    else
      render json: { errors: @tattooer.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @tattooer = Tattooer.find_by(id: current_tattooer.id)
    @tattooer.update(
      last_name: params[:last_name] || @tattooer.last_name,
      first_name: params[:first_name] || @tattooer.first_name,
      email: params[:email] || @tattooer.email,
      address: params[:address] || @tattooer.address,
      phone_number: params[:phone_number] || @tattooer.phone_number,
      tattoo_shop: params[:tattoo_shop] || @tattooer.tattoo_shop,
      user_name: params[:user_name] || @tattooer.user_name,
      password: params[:password] || @tattooer.password,
      password_confirmation: params[:password_confirmation] || @tattooer.password_confirmation,
    )
    if @tattooer.valid?
      render :show
    else
      render json: { errors: @tattooer.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @tattooer = Tattooer.find_by(id: current_tattooer.id)
    @tattooer.destroy
    render json: { message: "Tattooer successfully deleted" }
  end

  def show
    @tattooer = Tattooer.find_by(id: current_tattooer.id)
    render :show
  end

  def index
    @tattooers = Tattooer.all
    render :index
  end
end
