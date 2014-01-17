class SofasController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /sofas
  # GET /sofas.json
  def index
    @sofas = Furnishing.where("furnishing_type = 'sofa' and seats >= 2").order("shape ASC")
    @primary_img = @sofas.last.img
  end

  # GET /sofas/1
  # GET /sofas/1.json
  def show
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_furnishing
    @sofa = Furnishing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def furnishing_params
    params.require(:furnishing).permit(:name, :description, :dimensions_description, :img, :alter, :seats, :shape, :furnishing_type, :is_main)
  end

end
