class Api::V1::PetsController < ApplicationController
  # def toggle_adopt
	# 	@pet = Pet.find(params[:id])

	# 	@pet.update(to_adopt: !@pet.to_adopt)

	# 	render json: @pet
	# end



	def adopt
    @pet = Pet.find(params[:id])



    @pet.update(to_adopt: false, owner_id: curr_user.id)

		render json: @pet




  end
  # def adopt
  #   @pet = Pet.find(params[:id])


  #   @pet.update(to_adopt: false, owner_id: curr_user.id)

	# 	render json: @pet




	# end


  def index
    @pets =  Pet.where(to_adopt: true)
    render json: @pets
  end





  end
