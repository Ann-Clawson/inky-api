class TattooersController < ApplicationController
  before_action :authenticate_tattooer, except: [:create, :index]

  def create
    @tattooer = Tattooer.new(
      last_name: params[:last_name],
      first_name: params[:first_name],
      email: params[:email],
      phone_number: params[:phone_number],
      tattoo_shop: params[:tattoo_shop],
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
    pp current_tattooer
    @tattooer = Tattooer.find_by(id: current_tattooer.id)
    pp @tattooer
    @tattooer.update(
      last_name: params[:last_name] || @tattooer.last_name,
      first_name: params[:first_name] || @tattooer.first_name,
      email: params[:email] || @tattooer.email,
      phone_number: params[:phone_number] || @tattooer.phone_number,
      tattoo_shop: params[:tattoo_shop] || @tattooer.tattoo_shop,
      password: params[:password] || @tattooer.password,
      password_confirmation: params[:password_confirmation] || @tattooer.password_confirmation,
    )
    if @tattooer.save
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

  # def show_app_tattooer
  #   @tattooer = Tattooer.find_by(id: params[:id])
  # end

  def index
    @tattooers = Tattooer.all
    render :index
  end
end
