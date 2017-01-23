class AdoptersController < ApplicationController
  before_action :set_adopter, only: [:show, :update, :destroy]

  # GET /adopters
  # GET /adopters.json
  def index
    @adopters = Adopter.where(filtering_params)

    render json: @adopters
  end

  # GET /adopters/1
  # GET /adopters/1.json
  def show
    render json: @adopter
  end

  # POST /adopters
  # POST /adopters.json
  def create
    @adopter = Adopter.new(adopter_params)

    if @adopter.save
      render json: @adopter, status: :created, location: @adopter
    else
      render json: @adopter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adopters/1
  # PATCH/PUT /adopters/1.json
  def update
    @adopter = Adopter.find(params[:id])

    if @adopter.update(adopter_params)
      head :no_content
    else
      render json: @adopter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adopters/1
  # DELETE /adopters/1.json
  def destroy
    @adopter.destroy

    head :no_content
  end

  private

    def set_adopter
      @adopter = Adopter.find(params[:id])
    end

    def adopter_params
      params.require(:adopter).permit(:name, :kids, :cats, :dogs, :home_type, :searching_for, :ideal_temperament, :ideal_active_level, :bio)
    end

    # A list of the param names that can be used for filtering the Product list
    def filtering_params
      params.permit(:email)
    end
end
