class ProgramRostersController < ApplicationController
  before_action :set_program_roster, only: [:show, :edit, :update, :destroy]

  # GET /program_rosters
  # GET /program_rosters.json
  def index
    @program_rosters = ProgramRoster.all
  end

  # GET /program_rosters/1
  # GET /program_rosters/1.json
  def show
  end

  # GET /program_rosters/new
  def new
    @program_roster = ProgramRoster.new
  end

  # GET /program_rosters/1/edit
  def edit
  end

  # POST /program_rosters
  # POST /program_rosters.json
  def create
    @program_roster = ProgramRoster.new(program_roster_params)

    respond_to do |format|
      if @program_roster.save
        format.html { redirect_to @program_roster, notice: 'Program roster was successfully created.' }
        format.json { render :show, status: :created, location: @program_roster }
      else
        format.html { render :new }
        format.json { render json: @program_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_rosters/1
  # PATCH/PUT /program_rosters/1.json
  def update
    respond_to do |format|
      if @program_roster.update(program_roster_params)
        format.html { redirect_to @program_roster, notice: 'Program roster was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_roster }
      else
        format.html { render :edit }
        format.json { render json: @program_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_rosters/1
  # DELETE /program_rosters/1.json
  def destroy
    @program_roster.destroy
    respond_to do |format|
      format.html { redirect_to program_rosters_url, notice: 'Program roster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_roster
      @program_roster = ProgramRoster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_roster_params
      params.require(:program_roster).permit(:program_schedule_id, :customer_id)
    end
end
