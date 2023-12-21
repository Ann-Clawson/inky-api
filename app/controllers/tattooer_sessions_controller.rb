class TattooerSessionsController < ApplicationController
  def create
    tattooer = Tattooer.find_by(email: params[:email])
    if tattooer && tattooer.authenticate(params[:password])
      jwt = JWT.encode(
        {
          tattooer_id: tattooer.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: tattooer.email, tattooer_id: tattooer.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
