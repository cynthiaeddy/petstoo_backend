class Api::V1::UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    # user = pet.owner

    render json: user
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



  def get_pet
		Pet.create({
				name: Faker::Name.name,
        image: Faker::Avatar.image,


				to_adopt: false,
				owner_id: params[:id]
		})
    # Pet.create({
    #     name: Faker::Name.name,
    #     # image: Faker::Avatar.image,
    #
    #     to_adopt: true,
    #     owner_id: params[:id],
    #     image_array = ['https://sendeyo.com/up/de3269470dea83881ffb9a611e7cab45.png','https://sendeyo.com/up/75c75ff3d04f0b606da7f44e7af220db.png','https://sendeyo.com/up/0cee3baff176e1d87b1fe59258027745.png'],
    #     image: image_array.shuffle.sample,
    # })

		user = User.find(params[:id])


		render json: user
	end




end
