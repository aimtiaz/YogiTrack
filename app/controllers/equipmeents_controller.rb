class EquipmeentsController < ApplicationController
  before_action :set_equipmeent, only: [:show, :edit, :update, :destroy]

  # GET /equipmeents
  # GET /equipmeents.json
  def index
    @equipmeents = Equipmeent.all
  end

  # GET /equipmeents/1
  # GET /equipmeents/1.json
  def show
  end

  # GET /equipmeents/new
  def new
    @equipmeent = Equipmeent.new
  end

  # GET /equipmeents/1/edit
  def edit
  end

  # POST /equipmeents
  # POST /equipmeents.json
  def create
    @equipmeent = Equipmeent.new(equipmeent_params)

    respond_to do |format|
      if @equipmeent.save
        format.html { redirect_to @equipmeent, notice: 'Equipmeent was successfully created.' }
        format.json { render :show, status: :created, location: @equipmeent }
      else
        format.html { render :new }
        format.json { render json: @equipmeent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipmeents/1
  # PATCH/PUT /equipmeents/1.json
  def update
    respond_to do |format|
      if @equipmeent.update(equipmeent_params)
        format.html { redirect_to @equipmeent, notice: 'Equipmeent was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipmeent }
      else
        format.html { render :edit }
        format.json { render json: @equipmeent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipmeents/1
  # DELETE /equipmeents/1.json
  def destroy
    @equipmeent.destroy
    respond_to do |format|
      format.html { redirect_to equipmeents_url, notice: 'Equipmeent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipmeent
      @equipmeent = Equipmeent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipmeent_params
      params.require(:equipmeent).permit(:eq_desc, :rental_price, :equipment_status_id)
    end
end
