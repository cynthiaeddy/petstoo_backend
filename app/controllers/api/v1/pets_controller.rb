class Api::V1::PetsController < ApplicationController




	def adopt
    @pet = Pet.find(params[:id])
		# @owner = pet.owner
		# @owner.update(owner.pet)

    @pet.update(to_adopt: false, owner_id: curr_user.id)
		# curr_user.update(owner.pet)

		render json: @pet




	end


  def index
    @pets =  Pet.where(to_adopt: true)
    render json: @pets
  end





  end
