class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :update, :destroy]

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.where(filtering_params)
    render json: @pets
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
    render json: @pet
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params)
      head :no_content
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy

    head :no_content
  end

  private

    def set_pet
      @pet = Pet.find(params[:id])
    end

    def pet_params
      params.require(:pet).permit(:name, :photos, :est_age, :gender, :breed, :size, :cats, :dogs, :kids, :temperament, :exercise_needs, :home_type, :bio, :intake_date, :adoption_fee, :shelter_id, :species)
    end

    # A list of the param names that can be used for filtering the Product list
    def filtering_params
      params.permit(:shelter_id, :species, :cats, :dogs, :kids, :home_type)
    end
end
