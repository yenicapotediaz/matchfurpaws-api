class SheltersController < ApplicationController
  before_action :set_shelter, only: [:show, :update, :destroy]

  # GET /shelters
  # GET /shelters.json
  def index
    @shelters = Shelter.all

    render json: @shelters
  end

  # GET /shelters/1
  # GET /shelters/1.json
  def show
    render json: @shelter
  end

  # POST /shelters
  # POST /shelters.json
  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
      render json: @shelter, status: :created, location: @shelter
    else
      render json: @shelter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shelters/1
  # PATCH/PUT /shelters/1.json
  def update
    @shelter = Shelter.find(params[:id])

    if @shelter.update(shelter_params)
      head :no_content
    else
      render json: @shelter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shelters/1
  # DELETE /shelters/1.json
  def destroy
    @shelter.destroy

    head :no_content
  end

  private

    def set_shelter
      @shelter = Shelter.find(params[:id])
    end

    def shelter_params
      params.require(:shelter).permit(:name, :photo, :address, :zip_code, :city, :state, :email, :website, :bio)
    end
end
