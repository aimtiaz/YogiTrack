class ClassroomStatusesController < ApplicationController
  before_action :set_classroom_status, only: [:show, :edit, :update, :destroy]

  # GET /classroom_statuses
  # GET /classroom_statuses.json
  def index
    @classroom_statuses = ClassroomStatus.all
  end

  # GET /classroom_statuses/1
  # GET /classroom_statuses/1.json
  def show
  end

  # GET /classroom_statuses/new
  def new
    @classroom_status = ClassroomStatus.new
  end

  # GET /classroom_statuses/1/edit
  def edit
  end

  # POST /classroom_statuses
  # POST /classroom_statuses.json
  def create
    @classroom_status = ClassroomStatus.new(classroom_status_params)

    respond_to do |format|
      if @classroom_status.save
        format.html { redirect_to @classroom_status, notice: 'Classroom status was successfully created.' }
        format.json { render :show, status: :created, location: @classroom_status }
      else
        format.html { render :new }
        format.json { render json: @classroom_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classroom_statuses/1
  # PATCH/PUT /classroom_statuses/1.json
  def update
    respond_to do |format|
      if @classroom_status.update(classroom_status_params)
        format.html { redirect_to @classroom_status, notice: 'Classroom status was successfully updated.' }
        format.json { render :show, status: :ok, location: @classroom_status }
      else
        format.html { render :edit }
        format.json { render json: @classroom_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroom_statuses/1
  # DELETE /classroom_statuses/1.json
  def destroy
    @classroom_status.destroy
    respond_to do |format|
      format.html { redirect_to classroom_statuses_url, notice: 'Classroom status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom_status
      @classroom_status = ClassroomStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_status_params
      params.require(:classroom_status).permit(:classroom_status)
    end
end
