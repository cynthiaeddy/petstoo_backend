class Api::V1::PetsController < ApplicationController



  def toggle_adopt
    @pet = Pet.find(params[:id])
		@pet.update(to_adopt: !@pet.to_adopt)
		render json: @pet
	end

	def adopt
    @pet = Pet.find(params[:id])
		@owner = @pet.owner
    @pet.update(to_adopt: false, owner_id: curr_user.id)
		render json: @pet
	end


  # GET /@pets
  def index
    @pets =  Pet.where(to_adopt: true)
    # @pets = Pet.all
    render json: @pets
  end



  # PATCH/PUT /pets/1


  end
