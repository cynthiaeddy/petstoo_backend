class Api::V1::AuthController < ApplicationController


  def login
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params[:password])
      # token = rand(36**8).to_s(36)
      token = encode_token(user.id)
      # token = encode_token(user.id)

      # user.update(token: token)


      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: 'please try again'}
    end
  end

  def auto_login
    if curr_user
      render json: curr_user
    else
      render json: {errors: "please try again"}
    end
  end
end
