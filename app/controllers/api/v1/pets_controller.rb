class Api::V1::PetsController < ApplicationController
  before_action :set_pet, only: [:show, :update, :destroy, :toggle_adopt, :adopt]



  def toggle_adopt
		@pet.update(to_adopt: !@pet.to_adopt)
		render json: @pet
	end

	def adopt
		@owner = @pet.owner
		@pet.update(to_adopt: false, owner_id: curr_user.id)
		render json: @pet
	end


  # GET /@pets
  def index
    @pets = Pet.all
    render json: @pets
  end

  # GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_params
      params.require(:pet).permit(:name, :kind, :age, :color, :hair, :image)
    end

  end
