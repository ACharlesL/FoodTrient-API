# frozen_string_literal: true

class FridgesController < ProtectedController
  before_action :set_fridge, only: %i[update destroy]

  # GET /fridges
  def index
    @fridges = current_user.fridges.all

    render json: @fridges
  end

  # GET /fridges/1
  def show
    render json: Fridge.find(params[:id])
  end

  # POST /fridges
  def create
    @fridge = current_user.fridges.build(fridge_params)

    if @fridge.save
      render json: @fridge, status: :created
    else
      render json: @fridge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fridges/1
  def update
    if @fridge.update(fridge_params)
      render json: @fridge
    else
      render json: @fridge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fridges/1
  def destroy
    @fridge.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_fridge
    @fridge = current_user.fridges.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def fridge_params
    params.require(:fridge).permit(:ingredient_id)
  end

  private :set_fridge, :fridge_params
end
