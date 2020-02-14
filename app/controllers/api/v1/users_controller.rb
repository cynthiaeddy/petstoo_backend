class Api::V1::UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    user = User.find(params[:id])

    render json: @user
  end



  def create
		user = User.new(
			name: params[:name],
			password: params[:password]
		)
		if user.save
			token = encode_token(user.id)

      render json: {user: UserSerializer.new(user), token: token}
		else
			render json: {errors: user.errors.full_messages}
		end
	end



end
