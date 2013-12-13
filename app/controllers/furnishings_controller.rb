class FurnishingsController < ApplicationController
  before_action :set_furnishing, only: [:show, :edit, :update, :destroy]

  # GET /furnishings
  # GET /furnishings.json
  def index
    @furnishings = Furnishing.all
  end

  # GET /furnishings/1
  # GET /furnishings/1.json
  def show
  end

  # GET /furnishings/new
  def new
    @furnishing = Furnishing.new
  end

  # GET /furnishings/1/edit
  def edit
  end

  # POST /furnishings
  # POST /furnishings.json
  def create
    @furnishing = Furnishing.new(furnishing_params)

    respond_to do |format|
      if @furnishing.save
        format.html { redirect_to @furnishing, notice: 'Furnishing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @furnishing }
      else
        format.html { render action: 'new' }
        format.json { render json: @furnishing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furnishings/1
  # PATCH/PUT /furnishings/1.json
  def update
    respond_to do |format|
      if @furnishing.update(furnishing_params)
        format.html { redirect_to @furnishing, notice: 'Furnishing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @furnishing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furnishings/1
  # DELETE /furnishings/1.json
  def destroy
    @furnishing.destroy
    respond_to do |format|
      format.html { redirect_to furnishings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furnishing
      @furnishing = Furnishing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furnishing_params
      params.require(:furnishing).permit(:name, :description, :dimensions_description, :img, :alter, :seats, :shape, :furnishing_type, :is_main)
    end
end
