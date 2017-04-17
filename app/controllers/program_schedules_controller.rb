class ProgramSchedulesController < ApplicationController
  before_action :set_program_schedule, only: [:show, :edit, :update, :destroy]

  # GET /program_schedules
  # GET /program_schedules.json
  def index
    @program_schedules = ProgramSchedule.search(params[:search])
  end

  # GET /program_schedules/1
  # GET /program_schedules/1.json
  def show
  end

  # GET /program_schedules/new
  def new
    @program_schedule = ProgramSchedule.new
  end

  # GET /program_schedules/1/edit
  def edit
  end

  # POST /program_schedules
  # POST /program_schedules.json
  def create
    @program_schedule = ProgramSchedule.new(program_schedule_params)

    respond_to do |format|
      if @program_schedule.save
        format.html { redirect_to @program_schedule, notice: 'Program schedule was successfully created.' }
        format.json { render :show, status: :created, location: @program_schedule }
      else
        format.html { render :new }
        format.json { render json: @program_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_schedules/1
  # PATCH/PUT /program_schedules/1.json
  def update
    respond_to do |format|
      if @program_schedule.update(program_schedule_params)
        format.html { redirect_to @program_schedule, notice: 'Program schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_schedule }
      else
        format.html { render :edit }
        format.json { render json: @program_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_schedules/1
  # DELETE /program_schedules/1.json
  def destroy
    @program_schedule.destroy
    respond_to do |format|
      format.html { redirect_to program_schedules_url, notice: 'Program schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_schedule
      @program_schedule = ProgramSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_schedule_params
      params.require(:program_schedule).permit(:program_id, :instructor_id, :date, :start_time, :end_time, :classroom_id, :class_size)
    end
end
